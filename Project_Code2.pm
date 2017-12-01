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
const int N = 4; // number of sites
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
const int notvisited = 0;
const int visited = 1;

module UAV
	uav: [0..N] init 0;
	uav_battery: [-10..battery_levels+1] init battery_levels;
	
	[] uav = site0 & uav_battery > -1-> 0.1:(uav' = site1) & (uav_battery' = uav_battery-D01-1) + 0.1:(uav' = site1) & (uav_battery' = uav_battery-D01+1) + 0.8:(uav' = site1) & (uav_battery' = uav_battery-D01);
	[] uav = site0 & uav_battery > -1-> 0.1:(uav' = site2) & (uav_battery' = uav_battery-D02-1) + 0.1:(uav' = site2) & (uav_battery' = uav_battery-D02+1) + 0.8:(uav' = site2) & (uav_battery' = uav_battery-D02);
	[] uav = site0 & uav_battery > -1-> 0.1:(uav' = site3) & (uav_battery' = uav_battery-D03-1) + 0.1:(uav' = site3) & (uav_battery' = uav_battery-D03+1) + 0.8:(uav' = site3) & (uav_battery' = uav_battery-D03);
	[] uav = site0 & uav_battery > -1-> 0.1:(uav' = site4) & (uav_battery' = uav_battery-D04-1) + 0.1:(uav' = site4) & (uav_battery' = uav_battery-D04+1) + 0.8:(uav' = site4) & (uav_battery' = uav_battery-D04);
	[] uav = site1 & uav_battery > -1-> 0.1:(uav' = site2) & (uav_battery' = uav_battery-D12-1) + 0.1:(uav' = site2) & (uav_battery' = uav_battery-D12+1) + 0.8:(uav' = site2) & (uav_battery' = uav_battery-D12);
	[] uav = site1 & uav_battery > -1-> 0.1:(uav' = site3) & (uav_battery' = uav_battery-D13-1) + 0.1:(uav' = site3) & (uav_battery' = uav_battery-D13+1) + 0.8:(uav' = site3) & (uav_battery' = uav_battery-D13);
	[] uav = site1 & uav_battery > -1-> 0.1:(uav' = site4) & (uav_battery' = uav_battery-D14-1) + 0.1:(uav' = site4) & (uav_battery' = uav_battery-D14+1) + 0.8:(uav' = site4) & (uav_battery' = uav_battery-D14);
	[] uav = site2 & uav_battery > -1-> 0.1:(uav' = site1) & (uav_battery' = uav_battery-D12-1) + 0.1:(uav' = site1) & (uav_battery' = uav_battery-D12+1) + 0.8:(uav' = site1) & (uav_battery' = uav_battery-D12);
	[] uav = site2 & uav_battery > -1-> 0.1:(uav' = site3) & (uav_battery' = uav_battery-D23-1) + 0.1:(uav' = site3) & (uav_battery' = uav_battery-D23+1) + 0.8:(uav' = site3) & (uav_battery' = uav_battery-D23);
	[] uav = site2 & uav_battery > -1-> 0.1:(uav' = site4) & (uav_battery' = uav_battery-D24-1) + 0.1:(uav' = site4) & (uav_battery' = uav_battery-D24+1) + 0.8:(uav' = site4) & (uav_battery' = uav_battery-D24);
	[] uav = site3 & uav_battery > -1-> 0.1:(uav' = site1) & (uav_battery' = uav_battery-D13-1) + 0.1:(uav' = site1) & (uav_battery' = uav_battery-D13+1) + 0.8:(uav' = site1) & (uav_battery' = uav_battery-D13);
	[] uav = site3 & uav_battery > -1-> 0.1:(uav' = site2) & (uav_battery' = uav_battery-D23-1) + 0.1:(uav' = site2) & (uav_battery' = uav_battery-D23+1) + 0.8:(uav' = site2) & (uav_battery' = uav_battery-D23);
	[] uav = site3 & uav_battery > -1-> 0.1:(uav' = site4) & (uav_battery' = uav_battery-D34-1) + 0.1:(uav' = site4) & (uav_battery' = uav_battery-D34+1) + 0.8:(uav' = site4) & (uav_battery' = uav_battery-D34);
	[] uav = site4 & uav_battery > -1-> 0.1:(uav' = site1) & (uav_battery' = uav_battery-D14-1) + 0.1:(uav' = site1) & (uav_battery' = uav_battery-D14+1) + 0.8:(uav' = site1) & (uav_battery' = uav_battery-D14);
	[] uav = site4 & uav_battery > -1-> 0.1:(uav' = site2) & (uav_battery' = uav_battery-D24-1) + 0.1:(uav' = site2) & (uav_battery' = uav_battery-D24+1) + 0.8:(uav' = site2) & (uav_battery' = uav_battery-D24);
	[] uav = site4 & uav_battery > -1-> 0.1:(uav' = site3) & (uav_battery' = uav_battery-D34-1) + 0.1:(uav' = site3) & (uav_battery' = uav_battery-D34+1) + 0.8:(uav' = site3) & (uav_battery' = uav_battery-D34);

	// TODO: CHECK TO SEE IF BATTERY LEVEL IS -1 THEN YOU GIVE NEGATIVE INFINITY REWARDS
	// TODO: NEED TO ADD THE ACTION OF RECHARGIN AND GIVE NEGATIVE 1 REWARDS
	// RECHARGE
	[recharge] uav_battery > -1 & uav_battery < lvl1-> (uav_battery' = lvl1);
	[recharge] uav_battery > -1 & uav_battery < lvl2-> (uav_battery' = lvl2);
	[recharge] uav_battery > -1 & uav_battery < lvl3-> (uav_battery' = lvl3);
	[recharge] uav_battery > -1 & uav_battery < lvl4-> (uav_battery' = lvl4);
	[recharge] uav_battery > -1 & uav_battery < lvl5-> (uav_battery' = lvl5);
	[recharge] uav_battery > -1 & uav_battery < lvl6-> (uav_battery' = lvl6);
endmodule

module site_one
	s1: bool init false;
	
	[rewards1] s1 = false & uav = site1 -> (s1' = true);
endmodule

// duplicate site modules
module site_two = site_one[rewards1 = rewards2, s1 = s2, site1 = site2] endmodule
module site_three = site_one[rewards1 = rewards3, s1 = s3, site1 = site3] endmodule
module site_four = site_one[rewards1 = rewards4, s1 = s4, site1 = site4] endmodule

// reward for all sites visited or not
rewards "totalRewards"
	// VISITED A SITE
	[rewards1] uav_battery > -1: 50; 
	[rewards2] uav_battery > -1: 50;
	[rewards3] uav_battery > -1: 50;
	[rewards4] uav_battery > -1: 50;
	
	// RECHAGE
//	[recharge] uav_battery > -1: -1;

	// DEATH OF UAV
//	[] uav_battery < 0 : -100;
endrewards

rewards "failures"
	[] uav_battery < 0 : 1;
endrewards

rewards "recharge"
	[recharge] true: 1;
endrewards

// finish state
label "done" = (s1=true & s2=true & s3=true & s4=true) | uav_battery < 0;
