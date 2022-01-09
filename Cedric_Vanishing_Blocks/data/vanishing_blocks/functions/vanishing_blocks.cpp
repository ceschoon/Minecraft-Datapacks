#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <algorithm>
#include <random>
#include <stdlib.h>

using namespace std;

int main(int argc, char **argv)
{
	//////////////////////////////////////////////////////////////
	
	if (argc<=3)
	{
		cout << "Usage: ./vanishing_blocks <block_id_string> <distance> <mean_life_in_secs>" << endl;
		return 1;
	}
	
	string block_id = argv[1];
	int distance = stoi(argv[2]);
	int mean_life_in_secs = stoi(argv[3]);
	
	int sysres = system(("mkdir -p " + block_id).c_str());
	
	//////////////////////////////////////////////////////////////
	
	int num_blocks = (2*distance+1)*(2*distance+1)*(2*distance+1);
	
	vector<int> blocks(num_blocks);
	for (int i=0; i<num_blocks; i++) blocks[i] = i*20*mean_life_in_secs/num_blocks;
	
	shuffle(blocks.begin(), blocks.end(), default_random_engine(0));
	
	//////////////////////////////////////////////////////////////
	
	ofstream file_replace_air(block_id+"/replace_air.mcfunction");
	
	file_replace_air << "scoreboard players set @a[scores={vanishing_blocks_clock=";
	file_replace_air << 20*mean_life_in_secs;
	file_replace_air << "..}] vanishing_blocks_clock 0" << endl;
	
	int counter_blocks = 0;
	file_replace_air << endl;
	
	for (int ix=-distance; ix<=distance; ix++)
	for (int iy=-distance; iy<=distance; iy++)
	for (int iz=-distance; iz<=distance; iz++)
	{
		file_replace_air << "execute if entity @s[scores={vanishing_blocks_clock=";
		file_replace_air << blocks[counter_blocks];
		file_replace_air << "}]";
		file_replace_air << " if block";
		file_replace_air << " ~" << ix;
		file_replace_air << " ~" << iy;
		file_replace_air << " ~" << iz;
		file_replace_air << " " << block_id;
		file_replace_air << " run";
		file_replace_air << " setblock";
		file_replace_air << " ~" << ix;
		file_replace_air << " ~" << iy;
		file_replace_air << " ~" << iz;
		file_replace_air << " air";
		file_replace_air << endl;
		
		counter_blocks ++;
	}
	
	//////////////////////////////////////////////////////////////
	
	ofstream file_armor_stand(block_id+"/armor_stand.mcfunction");
	
	file_armor_stand << "scoreboard players set @a[scores={vanishing_blocks_clock=";
	file_armor_stand << 20*mean_life_in_secs;
	file_armor_stand << "..}] vanishing_blocks_clock 0" << endl;
	
	file_armor_stand << "execute at @e[type=armor_stand,name=vanishing_block] run ";
	file_armor_stand << "tp @e[type=armor_stand,name=vanishing_block,distance=..1] ";
	file_armor_stand << "~ ~0.3 ~" << endl;
	
	file_armor_stand << "kill @e[type=armor_stand,name=vanishing_block,x=-1000000,y=300,";
	file_armor_stand << "z=-1000000,dx=2000000,dy=1000000,dz=2000000]" << endl;
	
	counter_blocks = 0;
	file_armor_stand << endl;
	
	for (int ix=-distance; ix<=distance; ix++)
	for (int iy=-distance; iy<=distance; iy++)
	for (int iz=-distance; iz<=distance; iz++)
	{
		file_armor_stand << "execute if entity @s[scores={vanishing_blocks_clock=";
		file_armor_stand << blocks[counter_blocks];
		file_armor_stand << "}]";
		file_armor_stand << " if block";
		file_armor_stand << " ~" << ix;
		file_armor_stand << " ~" << iy;
		file_armor_stand << " ~" << iz;
		file_armor_stand << " " << block_id;
		file_armor_stand << " run";
		file_armor_stand << " summon armor_stand";
		file_armor_stand << " ~" << ix;
		file_armor_stand << " ~" << iy;
		file_armor_stand << " ~" << iz;
		file_armor_stand << " {Invisible:1,Marker:1,CustomName:\"\\\"vanishing_block\\\"\",";
		file_armor_stand << "CustomNameVisible:0,ArmorItems:[{},{},{},{id:\"minecraft:";
		file_armor_stand << block_id;
		file_armor_stand << "\",Count:1}]}";
		file_armor_stand << endl;
		
		counter_blocks ++;
	}
	
	return 0;
}
