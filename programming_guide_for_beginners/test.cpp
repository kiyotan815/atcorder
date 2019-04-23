#include <bits/stdc++.h>
using namespace std;
int main(void) {
  int n;
  cin >> n;
  if ((n % 1000) % 111 == 0) {
    cout << "Yes" << endl;
  }else if ((n /10) % 111 == 0) {
    cout << "Yes" << endl;
  }else
    cout << "No";
}
