#include <iostream>

using namespace std;

int main()
{
	int i=0, cnt = 0;
	double theta;

	while(cin >> theta){
		if(theta==0){
			cout << i << endl;
			cnt++;
		}
		i++;
	}

	cout << "# of zero theta: " << cnt << endl;
	return 0;
}