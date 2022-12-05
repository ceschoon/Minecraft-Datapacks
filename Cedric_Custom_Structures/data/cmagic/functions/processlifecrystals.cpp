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
	ofstream file_out("processlifecrystals.out");
	
	for (int i=0; i<=64; i++)
	{
		file_out << "attribute @s[scores={num_life_cryst=";
		file_out << i;
		file_out << "}]";
		file_out << " minecraft:generic.max_health base set ";
		file_out << 20+2*i;
		file_out << endl;
	}
	
	return 0;
}
