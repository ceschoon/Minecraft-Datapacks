#include <fstream>
#include <iostream>
#include <string>
#include <random>

using namespace std;




vector<string> cut_line(string line, char separator=' ')
{
	vector<string> line_elements;
	
	// add spaces to detect first and last element the same way 
	// we detect the others
	line = separator + line; 
	line = line + separator; 
	
	int pos1 = 0;
	int pos2 = 0;
	
	for (int i=1; i<line.size(); i++)
	{
		if (line[i]==separator)
		{
			pos1 = pos2;
			pos2 = i;
		}
		
		if (line[i]==separator && line[i-1]!=separator)
		{
			string element_str = line.substr(pos1+1,pos2-pos1-1);
			cout << "Read line element: \"" << element_str << "\"" << endl;
			line_elements.push_back(element_str);
		}
	}
	
	return line_elements;
}



string random_id(vector<string> block_ids_1, vector<double> block_weights_1, 
                 double random_number)
{
	int n = block_ids_1.size();
	if (block_weights_1.size() != n) throw runtime_error("block_weights_1.size() does not equal block_ids_1.size()");
	
	int idx = -1;
	double cumul = 0.0;
	
	while (cumul<random_number && idx<n-1)
	{
		idx ++;
		cumul += block_weights_1[idx];
	}
	
	if (idx<0 || idx>=n) throw runtime_error("Something is wrong with the block_id weights. Do they sum to 1.0?");
	return block_ids_1[idx];
}




int main(int argc, char** argv)
{
	// Read options and declare files
	
	if (argc<2) throw runtime_error("You must give one argument (the maze .dat file)");
	
	ifstream structFile(argv[1]);
	ifstream blockIdsFile("block_ids.dat");
	ofstream fctFile("out.mcfunction");
	
	// Get block ids from file
	
	vector<string> block_ids_1;
	vector<double> block_weights_1;
	
	string line;
	
	while (getline(blockIdsFile,line))
	{
		if (line[0]=='1')
		{
			vector<string> line_elements = cut_line(line);
			
			block_weights_1.push_back(stod(line_elements[1]));
			block_ids_1.push_back(line_elements[2]);
		}
	}
	
	// Random number generator
	
	random_device true_gen;
	int seed = true_gen();
	default_random_engine gen(seed);
	uniform_real_distribution<double> dist01(0,1);
	
	// Generate command for each block placement
	
	int linesCounter = 0;
	
	while (getline(structFile,line))
	{
		for (int i=0; i<line.size(); i++)
		{
			string cmd_str = "setblock ";
			
			cmd_str += ("~" + to_string(i+1) + " ");
			cmd_str += "~ ";
			cmd_str += ("~" + to_string(linesCounter+1) + " ");
			
			switch (line[i])
			{
				case ' ': 
					cmd_str += "air";
					break;
					
				case '0': 
					cmd_str += "air";
					break;
					
				case '1': 
					cmd_str += random_id(block_ids_1,block_weights_1,dist01(gen));
					break;
					
				default:  
					cmd_str += "redstone_block";
			}
			
			fctFile << cmd_str << endl;
		}
		
		linesCounter++;
	}
}