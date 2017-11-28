mdp

// description of test
// should work with no distances accounted for

// DISTNACE CONSTANTS
const int D01 = 2;
const int D02 = 3;
const int D03 = 2;
const int D04 = 4;
const int D12 = 3;
const int D13 = 2;
const int D14 = 4;
const int D23 = 3;
const int D24 = 4;
const int D34 = 2;

// SITES
const int N = 4; // number of sites\
const int site0 = 0;
const int site1 = 1;
const int site2 = 2;
const int site3 = 3;
const int site4 = 4;

// BATTERY LEVELS
// TODO: ADD BATTERY LEVELS INTO THE UAV AND ADD THE PROBABILITIES
const int lvl1 = 1;
const int lvl2 = 2;
const int lvl3 = 3;
const int lvl4 = 4;
const int lvl5 = 5;
const int lvl6 = 6;

// UAV SPEED
const int speed_UAV = 2; // (time/distnace)
const int battery_consumption = 1; // (battery drop/time)

// SITE INFORMATION
const int notvisited = 0;
const int visited = 1;

module UAV
	uav: [0..N] init 0;
	// TODO: NEED TO SEE WHAT I HAVE TO ADD TO UAV AGENT
	[] uav = site0 -> (uav' = site1);
	[] uav = site0 -> (uav' = site2);
	[] uav = site0 -> (uav' = site3);
	[] uav = site0 -> (uav' = site4);
//	[] uav = site1 -> uav = site1;
	[] uav = site1 -> (uav' = site2);
	[] uav = site1 -> (uav' = site3);
	[] uav = site1 -> (uav' = site4);
	[] uav = site2 -> (uav' = site1);
//	[] uav = site2 -> uav = site2;
	[] uav = site2 -> (uav' = site3);
	[] uav = site2 -> (uav' = site4);
	[] uav = site3 -> (uav' = site1);
	[] uav = site3 -> (uav' = site2);
//	[] uav = site3 -> uav = site3;
	[] uav = site3 -> (uav' = site4);
	[] uav = site4 -> (uav' = site1);
	[] uav = site4 -> (uav' = site2);
	[] uav = site4 -> (uav' = site3);
//	[] uav = site4 -> uav = site4;
endmodule


module site_one
	s1: bool init false;
	
	[] s1 = false & uav = site1 -> (s1' = true);
endmodule

// duplicate site modules
module site_two = site_one[s1 = s2, site1 = site2] endmodule
module site_three = site_one[s1 = s3, site1 = site3] endmodule
module site_four = site_one[s1 = s4, site1 = site4] endmodule

// reward for all sites visited or not
rewards "visitedSites"
	// TODO: NEED TO MAKE SURE THAT YOU ONLY COLLECT REWARDS ONCE
	// MAY NOT BE NEEDED
	s1 = true : 1; 
	s2 = true : 1;
	s3 = true : 1;
	s4 = true : 1;
endrewards

// finish state
label "done" = s1=true & s2=true & s3=true & s4=true;