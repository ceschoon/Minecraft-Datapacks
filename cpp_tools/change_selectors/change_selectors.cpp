#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>
#include <algorithm>
#include <random>
#include <stdlib.h>

using namespace std;


string dim_name_without_colon(string dim_name_in)
{
	string dim_name_out;
	
	for (int i=0; i<dim_name_in.size(); i++)
	{
		if (dim_name_in[i]==':') dim_name_out += "_";
		else dim_name_out += dim_name_in[i];
	}
	
	return dim_name_out;
}


int main(int argc, char **argv)
{
	//////////////////////////////////////////////////////////////
	
	if (argc<=3)
	{
		cout << "Usage: ./change selectors <dimension> <coord x> <coord z> <radius> <file.mcfunction>" << endl;
		return 1;
	}
	
	string dimension = argv[1];
	int coordx = stoi(argv[2]);
	int coordz = stoi(argv[3]);
	int radius = stoi(argv[4]);
	string mcfilename = argv[5];
	
	string dir_name = dim_name_without_colon(dimension) + "_" + to_string(coordx) + "_" + to_string(coordz) + "_" + to_string(radius);
	int sysres = system(("mkdir -p " + dir_name).c_str());
	
	//////////////////////////////////////////////////////////////
	
	stringstream xyz_condition;
	xyz_condition << "x=" << coordx-radius;
	xyz_condition << ",y=" << -1000;
	xyz_condition << ",z=" << coordz-radius;
	xyz_condition << ",dx=" << 2*radius;
	xyz_condition << ",dy=" << 2000;
	xyz_condition << ",dz=" << 2*radius;
	
	stringstream nbt_condition;
	nbt_condition << "nbt={Dimension:\"" << dimension << "\"}";
	
	//////////////////////////////////////////////////////////////
	
	ifstream mcfile_in(mcfilename);
	ofstream mcfile_out(dir_name+"/"+mcfilename);
	
	string line_in;
	int line_counter = 0;
	
	while (getline(mcfile_in, line_in))
	{
		line_counter ++;
		string line_out = "";
		
		if (line_in.size()==0) {mcfile_out << endl; continue;}
		else if (line_in[0]=='#') {mcfile_out << line_in << endl; continue;}
		
		// always copy first character
		int i=0; line_out += line_in[0];
		
		
		while (i<line_in.size()-1)
		{	
			// copy character anyway
			i++; line_out += line_in[i];
			
			bool found_selector = false;
			
			if (line_in[i-1]=='@' && line_in[i]=='a') found_selector = true;
			if (line_in[i-1]=='@' && line_in[i]=='s') found_selector = true;
			if (line_in[i-1]=='@' && line_in[i]=='p') found_selector = true;
			if (line_in[i-1]=='@' && line_in[i]=='e') found_selector = true;
			if (line_in[i-1]=='@' && line_in[i]=='r') found_selector = true;
			
			if (found_selector) cout << "Found selector \"@" << line_in[i] << "\" at line " << line_counter << ":" << i << endl;
			
			if (found_selector && i==line_in.size())
			{
				line_out += "[";
				line_out += xyz_condition.str();
				line_out += ",";
				line_out += nbt_condition.str();
				line_out += "]";
			}
			else if (found_selector)
			{
				if (line_in[i+1]=='[')
				{
					line_out += "[";
					line_out += xyz_condition.str();
					line_out += ",";
					line_out += nbt_condition.str();
					line_out += ",";
					
					i++; // do not print '[' twice
				}
				else
				{
					line_out += "[";
					line_out += xyz_condition.str();
					line_out += ",";
					line_out += nbt_condition.str();
					line_out += "]";
				}
			}
		}
		
		mcfile_out << line_out << endl;
	}
	
	return 0;
}
