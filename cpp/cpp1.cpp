#include "bits/stdc++.h"
using namespace std;

// --do not use string(name);
using str = string;
// type def name change  ---do not use original name
typedef long long ll;
typedef long double ld;
typedef unsigned long long ull;
typedef unsigned int uint;

// methods
#define sz(x) (int)(x).size()
#define pb push_back
#define f first
#define s second
#define lb lower_bound
#define ub upper_bound
#define all(x) x.begin(), x.end()
#define ins insert

// vector
#define vi vector<int>
#define vui vector<uint>
#define vd vector<double>
#define vll vector<ll>
#define vs vector<str>
#define vc vector<char>

const int MOD = 1000000007;
const char nl = '\n';

#define deb(x) cout << "[ " << #x << " = " << x << " ]" << '\n' 
#define print(vec) for(auto i: vec){cout << i << " ";} cout << '\n'
#define sumel(vec)  accumulate(vec.begin(), vec.end(), 0)      
#define maxel(vec) *max_element(vec.begin(), vec.end())  
#define minel(vec) *min_element(vec.begin(), vec.end())  
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//


void solve(){
	// input	
    
	
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
int main(){

	// author: Kunal Singh (KunalSin9h)
	
	ios::sync_with_stdio(false);
	cin.tie(0), cout.tie(0);
	int Test = 1;
	cin >> Test;
	while(Test--){solve();}
	return 0;
}
/*
    Check for Edge cases like 0, -1, 1
    Check for Worst Case like 2^31-1/ 10^9
    Analyse Time Com. with potential input size
    Custom input Check
    Small Details in Question
    Every line in question has importance
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Don't Get stuck in single approch.
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*/