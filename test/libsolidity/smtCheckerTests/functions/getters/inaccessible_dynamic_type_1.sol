pragma experimental SMTChecker;
contract C {
	struct S {
		string a;
		uint256 y;
	}
	S public s;
	function g() public view returns (uint256) {
		this.s();
	}
}
// ====
// EVMVersion: <=spuriousDragon
// ----
// Warning 6321: (133-140): Unnamed return variable can remain unassigned. Add an explicit return with value to all non-reverting code paths or name the variable.
