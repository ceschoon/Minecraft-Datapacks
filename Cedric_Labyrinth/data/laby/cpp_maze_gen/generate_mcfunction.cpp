#include <fstream>
#include <iostream>
#include <string>

using namespace std;

int main(int argc, char** argv)
{
	// Read options and declare files
	
	if (argc<2) throw runtime_error("You must give one argument (the maze .dat file)");
	
	ifstream structFile(argv[1]);
	ifstream blockIdsFile("block_ids.dat");
	ofstream fctFile("out.mcfunction");
	
	// Generate command for each block placement
	
	string line;
	int linesCounter = 0;
	
	while (getline(structFile,line))
	{
		for (int i=0; i<line.size(); i++)
		{
			string cmd_str = "setblock ";
			
			cmd_str += ("~" + to_string(i+1) + " ");
			cmd_str += "~ ";
			cmd_str += ("~" + to_string(linesCounter+1) + " ");
			
			// TODO: read id from block id file
			// TODO: add a bit a bit of randomness in block palette
			switch (line[i])
			{
				case ' ': 
					cmd_str += "air";
					break;
				case '0': 
					cmd_str += "air";
					break;
				case '1': 
					cmd_str += "stone";
					break;
				default:  
					cmd_str += "redstone_block";
			}
			
			fctFile << cmd_str << endl;
		}
		
		linesCounter++;
	}
}