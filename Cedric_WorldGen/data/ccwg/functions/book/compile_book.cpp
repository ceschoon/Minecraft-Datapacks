#include <fstream>
#include <string>

using namespace std;

int main(int argc, char **argv)
{
	int Npages = stoi(argv[1]);
	
	ofstream file_out("give_book.mcfunction");
	file_out << "give @s written_book{pages:[";
	
	for (int i=0; i<Npages; i++)
	{
		ifstream file_in("page"+to_string(i+1)+".txt");
		string line = "";
		int line_counter = 0;
		
		if (i>0) file_out << ",";
		file_out << "'[";
		
		while (getline(file_in, line))
		{
			if (line.size()==0) continue;
			if (line[0]=='#') continue;
			if (line_counter>0) file_out << ",";
			file_out << line;
			
			line_counter ++;
		}
		
		file_out << "]'";
	}
	
	file_out << "]";
	file_out << ",title:\"The Book of the Multiverse\"";
	file_out << ",author:Cedriclabo";
	file_out << ",display:{Lore:[\"\\\"Mostly Harmless\\\"\"]}}";
	file_out << endl;
	
	return 0;
}
