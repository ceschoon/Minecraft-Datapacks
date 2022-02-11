#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
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
		cout << "Usage: ./change selectors <coord x> <coord z> <radius> <file.mcfunction>" << endl;
		return 1;
	}
	
	int coordx = stoi(argv[1]);
	int coordz = stoi(argv[2]);
	int radius = stoi(argv[3]);
	string mcfilename = argv[4];
	
	//////////////////////////////////////////////////////////////
	
	string dir_name = to_string(coordx) + "_" + to_string(coordz) + "_" + to_string(radius);
	int sysres = system(("mkdir -p " + dir_name).c_str());
	
	stringstream xyz_condition;
	xyz_condition << "x=" << coordx-radius;
	xyz_condition << ",y=" << -1000;
	xyz_condition << ",z=" << coordz-radius;
	xyz_condition << ",dx=" << 2*radius;
	xyz_condition << ",dy=" << 2000;
	xyz_condition << ",dz=" << 2*radius;
	
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
		
		bool found_function_keyword = false;
		
		// always copy first character
		int i=0; line_out += line_in[0];
		
		while (i<line_in.size()-1)
		{	
			// copy character anyway
			i++; line_out += line_in[i];
			
			////////////////////////////////////////
			bool found_selector = false;
			
			if (line_in[i-1]=='@' && line_in[i]=='a') found_selector = true;
			if (line_in[i-1]=='@' && line_in[i]=='s') found_selector = true;
			if (line_in[i-1]=='@' && line_in[i]=='p') found_selector = true;
			if (line_in[i-1]=='@' && line_in[i]=='r') found_selector = true;
			if (line_in[i-1]=='@' && line_in[i]=='e') found_selector = true;
			
			if (found_selector) cout << "Found selector \"@" << line_in[i] << "\" at line " << line_counter << ":" << i << endl;
			
			if (found_selector && i==line_in.size())
			{
				line_out += "[";
				line_out += xyz_condition.str();
				line_out += "]";
			}
			else if (found_selector)
			{
				if (line_in[i+1]=='[')
				{
					line_out += "[";
					line_out += xyz_condition.str();
					line_out += ",";
					
					i++; // do not print '[' twice
				}
				else
				{
					line_out += "[";
					line_out += xyz_condition.str();
					line_out += "]";
				}
			}
			
			////////////////////////////////////////
			// function keyword stuff
			
			if (i>=7) 
			{
				if (line_in[i-7]=='f' && 
				    line_in[i-6]=='u' && 
				    line_in[i-5]=='n' && 
				    line_in[i-4]=='c' && 
				    line_in[i-3]=='t' && 
				    line_in[i-2]=='i' && 
				    line_in[i-1]=='o' && 
				    line_in[i-0]=='n') 
				{
					found_function_keyword = true;
					cout << "Found function keyword at line " << line_counter << ":" << i << endl;
				}
			}
			
			if (found_function_keyword && line_in[i]==':')
			{
				line_out += dir_name;
				line_out += "/";
				
				found_function_keyword = false;
			}
		}
		
		mcfile_out << line_out << endl;
	}
	
	return 0;
}