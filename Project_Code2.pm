mdp

// description of test
// 

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
const int N = 4 // number of sites\
const int site0 = 0;
const int site1 = 1;
const int site2 = 2;
const int site3 = 3;
const int site4 = 4;

// BATTERY LEVELS
// TODO: ADD BATTERY LEVELS INTO THE UAV AND ADD THE PROBABILITIES
const int battery_levels = 6;
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
const int notvisited = 0
const int visited = 1

module UAV
	uav: [0..N] init 0;
	uav_battery: [-1..battery_levels] init 0;
	
	// TODO: NEED TO SEE WHAT I HAVE TO ADD TO UAV AGENT
	[] uav = site0 & uav_battery > D01 -> 0.1:(uav' = site1 & uav_battery' = uav_battery-D01-1) + 0.1:(uav' = site1 & uav_battery' = uav-D01+1) + 0.8:(uav' = site1 & uav_battery' = uav-D01);
	[] uav = site0 & uav_battery > D02 -> uav' = site2 & uav_battery' = uav_battery-D02;
	[] uav = site0 & uav_battery > D03 -> uav' = site3 & uav_battery' = uav_battery-D03;
	[] uav = site0 & uav_battery > D04 -> uav' = site4 & uav_battery' = uav_battery-D04;
//	[] uav = site1 & uav_battery > D11 -> uav' = site1 & uav_battery' = uav_battery-D11;
	[] uav = site1 & uav_battery > D12 -> uav' = site2 & uav_battery' = uav_battery-D12;
	[] uav = site1 & uav_battery > D13 -> uav' = site3 & uav_battery' = uav_battery-D13;
	[] uav = site1 & uav_battery > D14 -> uav' = site4 & uav_battery' = uav_battery-D14;
	[] uav = site2 & uav_battery > D21 -> uav' = site1 & uav_battery' = uav_battery-D21;
//	[] uav = site2 & uav_battery > D22 -> uav' = site2 & uav_battery' = uav_battery-D22;
	[] uav = site2 & uav_battery > D23 -> uav' = site3 & uav_battery' = uav_battery-D23;
	[] uav = site2 & uav_battery > D24 -> uav' = site4 & uav_battery' = uav_battery-D24;
	[] uav = site3 & uav_battery > D31 -> uav' = site1 & uav_battery' = uav_battery-D31;
	[] uav = site3 & uav_battery > D32 -> uav' = site2 & uav_battery' = uav_battery-D32;
//	[] uav = site3 & uav_battery > D33 -> uav' = site3 & uav_battery' = uav_battery-D33;
	[] uav = site3 & uav_battery > D34 -> uav' = site4 & uav_battery' = uav_battery-D34;
	[] uav = site4 & uav_battery > D41 -> uav' = site1 & uav_battery' = uav_battery-D41;
	[] uav = site4 & uav_battery > D42 -> uav' = site2 & uav_battery' = uav_battery-D42;
	[] uav = site4 & uav_battery > D43 -> uav' = site3 & uav_battery' = uav_battery-D43;
//	[] uav = site4 & uav_battery > D44 -> uav' = site4 & uav_battery' = uav_battery-D44;

	// TODO: CHECK TO SEE IF BATTERY LEVEL IS -1 THEN YOU GIVE NEGATIVE INFINITY REWARDS
	// TODO: NEED TO ADD THE ACTION OF RECHARGIN AND GIVE NEGATIVE 1 REWARDS
	// RECHARGE
	[] uav_battery > -1 -> uav_battery' = lvl1
	[] uav_battery > -1 -> uav_battery' = lvl2
	[] uav_battery > -1 -> uav_battery' = lvl3
	[] uav_battery > -1 -> uav_battery' = lvl4
	[] uav_battery > -1 -> uav_battery' = lvl5
	[] uav_battery > -1 -> uav_battery' = lvl6
endmodule


module site_one
	s1: bool init false;
	
	[] s1 = false & uav = site1 -> s1' = true
endmodule

// duplicate site modules
module site_two = site_one[s1 = s2, site1 = site2] endmodule
module site_three = site_one[s1 = s3, site1 = site3] endmodule
module site_four = site_one[s1 = s4, site1 = site4] endmodule

// reward for all sites visited or not
rewards "visited sites"
	// TODO: NEED TO MAKE SURE THAT YOU ONLY COLLECT REWARDS ONCE
	// MAY NOT BE NEEDED
	s1 = true : 1; 
	s2 = true : 1;
	s3 = true : 1;
	s4 = true : 1;
endrewards

// finish state
label "done" = s1=true & s2=true & s3=true & s4=true;