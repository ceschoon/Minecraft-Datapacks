#include <fstream>
#include <iostream>
#include <string>

using namespace std;

int main(int argc, char** argv)
{
	if (argc<2) throw runtime_error("You must give one arguments (the amplification factor).");
	
	int ampFactor = stoi(argv[1]);
	
	ifstream inFile("maze.dat");
	ofstream outFile("maze_amplified.dat");
	
	string line;
	int linesCounter = 0;
	
	while (getline(inFile,line))
	{
		for (int j=0; j<ampFactor; j++) // repeat to amplify
		{
			for (int i=0; i<line.size(); i++)
			{
				for (int k=0; k<ampFactor; k++) // repeat to amplify
				{
					outFile << line[i];
				}
			}
			
			outFile << endl;
		}
	}
}