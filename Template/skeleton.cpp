#include "bits/stdc++.h"
#pragma GCC optimize ("O3")
#pragma GCC target ("sse4")

using namespace std;

using str = string;
typedef long long ll;
typedef unsigned long long ull;

#define pi pair<int, int>
#define pl pair<ll, ll> 

#define vi vector<int>
#define vt vector
#define unset unordered_set
#define unmap unordered_map

#define FOR(i, a, b) for (int i=a; i<(b); i++)
#define F0R(i, a) for (int i=0; i<(a); i++)
#define FORd(i,a,b) for (int i = (b)-1; i >= a; i--)
#define F0Rd(i,a) for (int i = (a)-1; i >= 0; i--)
#define trav(a,x) for (auto& a : x)
#define print(arr, n) for(int i=0;i<n;++i){cout << arr[i] << " ";} cout << nl;
#define read(arr, n) for(int i=0;i<n;++i){cin >> arr[i];}

#define f first
#define s second
#define pb push_back
#define sz(x) ((int)x.size())
#define all(x) begin(x), end(x)
#define popcount(x)     __builtin_popcountll(x)
#define ter cout<<nl
#define nl '\n'
#define MOD (1000000007)
#define PI (3.141592653589)

template<class T> bool ckmin(T& a, const T& b) { return b < a ? a = b, 1 : 0; }
template<class T> bool ckmax(T& a, const T& b) { return a < b ? a = b, 1 : 0; }

void __print(int x) {cerr << x;}
void __print(long x) {cerr << x;}
void __print(long long x) {cerr << x;}
void __print(unsigned x) {cerr << x;}
void __print(unsigned long x) {cerr << x;}
void __print(unsigned long long x) {cerr << x;}
void __print(float x) {cerr << x;}
void __print(double x) {cerr << x;}
void __print(long double x) {cerr << x;}
void __print(char x) {cerr << '\'' << x << '\'';}
void __print(const char *x) {cerr << '\"' << x << '\"';}
void __print(const string &x) {cerr << '\"' << x << '\"';}
void __print(bool x) {cerr << (x ? "true" : "false");}
 
template<typename T, typename V>
void __print(const pair<T, V> &x) {cerr << '{'; __print(x.first); cerr << ", "; __print(x.second); cerr << '}';}
template<typename T>
void __print(const T &x) {int f = 0; cerr << '{'; for (auto &i: x) cerr << (f++ ? ", " : ""), __print(i); cerr << "}";}
void _print() {cerr << "]\n";}
template <typename T, typename... V>
void _print(T t, V... v) {__print(t); if (sizeof...(v)) cerr << ", "; _print(v...);}

#ifdef DEBUG
#define dbg(x...) cerr << "  "<<__func__<<":"<<__LINE__<<" [" << #x << "] = ["; _print(x);
#else
#define dbg(x...)
#endif



void solve(){



}

int main(){
    ios_base::sync_with_stdio(false), cin.tie(0);

    int Test = 1;
    cin >> Test;
	for(int tc=1;tc<=Test;tc++){
		//cout<<"Case #"<<tc<<": ";
		solve();
    }
    return 0;
}


