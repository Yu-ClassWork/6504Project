mdp

// Toy example with site 1 being far away, but the other sites very close. This should give an outcome that only uses one recharging stations as long as you add less than battery level sites close to each other.
// Property: multi(R{"negatives"}min=? [C],R{"totalRewards"}max=? [C])

// DISTNACE CONSTANTS
const int D01 = 1;
const int D02 = 1;
const int D03 = 1;
const int D04 = 1;
const int D05 = 1;
const int D06 = 1;
const int D07 = 1;
const int D12 = 9;
const int D13 = 9;
const int D14 = 9;
const int D15 = 9;
const int D16 = 9;
const int D17 = 9;
const int D23 = 1;
const int D24 = 1;
const int D25 = 1;
const int D26 = 1;
const int D27 = 1;
const int D34 = 1;
const int D35 = 1;
const int D36 = 1;
const int D37 = 1;
const int D45 = 1;
const int D46 = 1;
const int D47 = 1;
const int D56 = 1;
const int D57 = 1;
const int D67 = 1;



// SITES
const int N = 7; // number of sites
const int site0 = 0;
const int site1 = 1;
const int site2 = 2;
const int site3 = 3;
const int site4 = 4;
const int site5 = 5;
const int site6 = 6;
const int site7 = 7;
//const int site8 = 8;
//const int site9 = 9;
//const int site10 = 10;
//const int site11 = 11;
//const int site12 = 12;


// BATTERY LEVELS
// TODO: ADD BATTERY LEVELS INTO THE UAV AND ADD THE PROBABILITIES
const int battery_levels = 10;
const int lvl1 = 1;
const int lvl2 = 2;
const int lvl3 = 3;
const int lvl4 = 4;
const int lvl5 = 5;
const int lvl6 = 6;
const int lvl7 = 7;
const int lvl8 = 8;
const int lvl9 = 9;
const int lvl10 = 10;

// UAV SPEED
const int speed_UAV = 2; // (time/distnace)
const int battery_consumption = 1; // (battery drop/time)

// SITE INFORMATION
const int notvisited = 0;
const int visited = 1;

module UAV
	uav: [0..N] init 0;
	uav_battery: [-10..battery_levels+1] init battery_levels;
	
	[] uav = site0 & uav_battery > -1-> 0.15:(uav' = site1) & (uav_battery' = uav_battery - D01 - 1) + 0.15:(uav' = site1) & (uav_battery' = uav_battery - D01 + 1) + 0.7:(uav' = site1) & (uav_battery' = uav_battery - D01);
[] uav = site0 & uav_battery > -1-> 0.15:(uav' = site2) & (uav_battery' = uav_battery - D02 - 1) + 0.15:(uav' = site2) & (uav_battery' = uav_battery - D02 + 1) + 0.7:(uav' = site2) & (uav_battery' = uav_battery - D02);
[] uav = site0 & uav_battery > -1-> 0.15:(uav' = site3) & (uav_battery' = uav_battery - D03 - 1) + 0.15:(uav' = site3) & (uav_battery' = uav_battery - D03 + 1) + 0.7:(uav' = site3) & (uav_battery' = uav_battery - D03);
[] uav = site0 & uav_battery > -1-> 0.15:(uav' = site4) & (uav_battery' = uav_battery - D04 - 1) + 0.15:(uav' = site4) & (uav_battery' = uav_battery - D04 + 1) + 0.7:(uav' = site4) & (uav_battery' = uav_battery - D04);
[] uav = site0 & uav_battery > -1-> 0.15:(uav' = site5) & (uav_battery' = uav_battery - D05 - 1) + 0.15:(uav' = site5) & (uav_battery' = uav_battery - D05 + 1) + 0.7:(uav' = site5) & (uav_battery' = uav_battery - D05);
[] uav = site0 & uav_battery > -1-> 0.15:(uav' = site6) & (uav_battery' = uav_battery - D06 - 1) + 0.15:(uav' = site6) & (uav_battery' = uav_battery - D06 + 1) + 0.7:(uav' = site6) & (uav_battery' = uav_battery - D06);
[] uav = site0 & uav_battery > -1-> 0.15:(uav' = site7) & (uav_battery' = uav_battery - D07 - 1) + 0.15:(uav' = site7) & (uav_battery' = uav_battery - D07 + 1) + 0.7:(uav' = site7) & (uav_battery' = uav_battery - D07);
[] uav = site1 & uav_battery > -1-> 0.15:(uav' = site2) & (uav_battery' = uav_battery - D12 - 1) + 0.15:(uav' = site2) & (uav_battery' = uav_battery - D12 + 1) + 0.7:(uav' = site2) & (uav_battery' = uav_battery - D12);
[] uav = site1 & uav_battery > -1-> 0.15:(uav' = site3) & (uav_battery' = uav_battery - D13 - 1) + 0.15:(uav' = site3) & (uav_battery' = uav_battery - D13 + 1) + 0.7:(uav' = site3) & (uav_battery' = uav_battery - D13);
[] uav = site1 & uav_battery > -1-> 0.15:(uav' = site4) & (uav_battery' = uav_battery - D14 - 1) + 0.15:(uav' = site4) & (uav_battery' = uav_battery - D14 + 1) + 0.7:(uav' = site4) & (uav_battery' = uav_battery - D14);
[] uav = site1 & uav_battery > -1-> 0.15:(uav' = site5) & (uav_battery' = uav_battery - D15 - 1) + 0.15:(uav' = site5) & (uav_battery' = uav_battery - D15 + 1) + 0.7:(uav' = site5) & (uav_battery' = uav_battery - D15);
[] uav = site1 & uav_battery > -1-> 0.15:(uav' = site6) & (uav_battery' = uav_battery - D16 - 1) + 0.15:(uav' = site6) & (uav_battery' = uav_battery - D16 + 1) + 0.7:(uav' = site6) & (uav_battery' = uav_battery - D16);
[] uav = site1 & uav_battery > -1-> 0.15:(uav' = site7) & (uav_battery' = uav_battery - D17 - 1) + 0.15:(uav' = site7) & (uav_battery' = uav_battery - D17 + 1) + 0.7:(uav' = site7) & (uav_battery' = uav_battery - D17);
[] uav = site2 & uav_battery > -1-> 0.15:(uav' = site1) & (uav_battery' = uav_battery - D12 - 1) + 0.15:(uav' = site1) & (uav_battery' = uav_battery - D12 + 1) + 0.7:(uav' = site1) & (uav_battery' = uav_battery - D12);
[] uav = site2 & uav_battery > -1-> 0.15:(uav' = site3) & (uav_battery' = uav_battery - D23 - 1) + 0.15:(uav' = site3) & (uav_battery' = uav_battery - D23 + 1) + 0.7:(uav' = site3) & (uav_battery' = uav_battery - D23);
[] uav = site2 & uav_battery > -1-> 0.15:(uav' = site4) & (uav_battery' = uav_battery - D24 - 1) + 0.15:(uav' = site4) & (uav_battery' = uav_battery - D24 + 1) + 0.7:(uav' = site4) & (uav_battery' = uav_battery - D24);
[] uav = site2 & uav_battery > -1-> 0.15:(uav' = site5) & (uav_battery' = uav_battery - D25 - 1) + 0.15:(uav' = site5) & (uav_battery' = uav_battery - D25 + 1) + 0.7:(uav' = site5) & (uav_battery' = uav_battery - D25);
[] uav = site2 & uav_battery > -1-> 0.15:(uav' = site6) & (uav_battery' = uav_battery - D26 - 1) + 0.15:(uav' = site6) & (uav_battery' = uav_battery - D26 + 1) + 0.7:(uav' = site6) & (uav_battery' = uav_battery - D26);
[] uav = site2 & uav_battery > -1-> 0.15:(uav' = site7) & (uav_battery' = uav_battery - D27 - 1) + 0.15:(uav' = site7) & (uav_battery' = uav_battery - D27 + 1) + 0.7:(uav' = site7) & (uav_battery' = uav_battery - D27);
[] uav = site3 & uav_battery > -1-> 0.15:(uav' = site1) & (uav_battery' = uav_battery - D13 - 1) + 0.15:(uav' = site1) & (uav_battery' = uav_battery - D13 + 1) + 0.7:(uav' = site1) & (uav_battery' = uav_battery - D13);
[] uav = site3 & uav_battery > -1-> 0.15:(uav' = site2) & (uav_battery' = uav_battery - D23 - 1) + 0.15:(uav' = site2) & (uav_battery' = uav_battery - D23 + 1) + 0.7:(uav' = site2) & (uav_battery' = uav_battery - D23);
[] uav = site3 & uav_battery > -1-> 0.15:(uav' = site4) & (uav_battery' = uav_battery - D34 - 1) + 0.15:(uav' = site4) & (uav_battery' = uav_battery - D34 + 1) + 0.7:(uav' = site4) & (uav_battery' = uav_battery - D34);
[] uav = site3 & uav_battery > -1-> 0.15:(uav' = site5) & (uav_battery' = uav_battery - D35 - 1) + 0.15:(uav' = site5) & (uav_battery' = uav_battery - D35 + 1) + 0.7:(uav' = site5) & (uav_battery' = uav_battery - D35);
[] uav = site3 & uav_battery > -1-> 0.15:(uav' = site6) & (uav_battery' = uav_battery - D36 - 1) + 0.15:(uav' = site6) & (uav_battery' = uav_battery - D36 + 1) + 0.7:(uav' = site6) & (uav_battery' = uav_battery - D36);
[] uav = site3 & uav_battery > -1-> 0.15:(uav' = site7) & (uav_battery' = uav_battery - D37 - 1) + 0.15:(uav' = site7) & (uav_battery' = uav_battery - D37 + 1) + 0.7:(uav' = site7) & (uav_battery' = uav_battery - D37);
[] uav = site4 & uav_battery > -1-> 0.15:(uav' = site1) & (uav_battery' = uav_battery - D14 - 1) + 0.15:(uav' = site1) & (uav_battery' = uav_battery - D14 + 1) + 0.7:(uav' = site1) & (uav_battery' = uav_battery - D14);
[] uav = site4 & uav_battery > -1-> 0.15:(uav' = site2) & (uav_battery' = uav_battery - D24 - 1) + 0.15:(uav' = site2) & (uav_battery' = uav_battery - D24 + 1) + 0.7:(uav' = site2) & (uav_battery' = uav_battery - D24);
[] uav = site4 & uav_battery > -1-> 0.15:(uav' = site3) & (uav_battery' = uav_battery - D34 - 1) + 0.15:(uav' = site3) & (uav_battery' = uav_battery - D34 + 1) + 0.7:(uav' = site3) & (uav_battery' = uav_battery - D34);
[] uav = site4 & uav_battery > -1-> 0.15:(uav' = site5) & (uav_battery' = uav_battery - D45 - 1) + 0.15:(uav' = site5) & (uav_battery' = uav_battery - D45 + 1) + 0.7:(uav' = site5) & (uav_battery' = uav_battery - D45);
[] uav = site4 & uav_battery > -1-> 0.15:(uav' = site6) & (uav_battery' = uav_battery - D46 - 1) + 0.15:(uav' = site6) & (uav_battery' = uav_battery - D46 + 1) + 0.7:(uav' = site6) & (uav_battery' = uav_battery - D46);
[] uav = site4 & uav_battery > -1-> 0.15:(uav' = site7) & (uav_battery' = uav_battery - D47 - 1) + 0.15:(uav' = site7) & (uav_battery' = uav_battery - D47 + 1) + 0.7:(uav' = site7) & (uav_battery' = uav_battery - D47);
[] uav = site5 & uav_battery > -1-> 0.15:(uav' = site1) & (uav_battery' = uav_battery - D15 - 1) + 0.15:(uav' = site1) & (uav_battery' = uav_battery - D15 + 1) + 0.7:(uav' = site1) & (uav_battery' = uav_battery - D15);
[] uav = site5 & uav_battery > -1-> 0.15:(uav' = site2) & (uav_battery' = uav_battery - D25 - 1) + 0.15:(uav' = site2) & (uav_battery' = uav_battery - D25 + 1) + 0.7:(uav' = site2) & (uav_battery' = uav_battery - D25);
[] uav = site5 & uav_battery > -1-> 0.15:(uav' = site3) & (uav_battery' = uav_battery - D35 - 1) + 0.15:(uav' = site3) & (uav_battery' = uav_battery - D35 + 1) + 0.7:(uav' = site3) & (uav_battery' = uav_battery - D35);
[] uav = site5 & uav_battery > -1-> 0.15:(uav' = site4) & (uav_battery' = uav_battery - D45 - 1) + 0.15:(uav' = site4) & (uav_battery' = uav_battery - D45 + 1) + 0.7:(uav' = site4) & (uav_battery' = uav_battery - D45);
[] uav = site5 & uav_battery > -1-> 0.15:(uav' = site6) & (uav_battery' = uav_battery - D56 - 1) + 0.15:(uav' = site6) & (uav_battery' = uav_battery - D56 + 1) + 0.7:(uav' = site6) & (uav_battery' = uav_battery - D56);
[] uav = site5 & uav_battery > -1-> 0.15:(uav' = site7) & (uav_battery' = uav_battery - D57 - 1) + 0.15:(uav' = site7) & (uav_battery' = uav_battery - D57 + 1) + 0.7:(uav' = site7) & (uav_battery' = uav_battery - D57);
[] uav = site6 & uav_battery > -1-> 0.15:(uav' = site1) & (uav_battery' = uav_battery - D16 - 1) + 0.15:(uav' = site1) & (uav_battery' = uav_battery - D16 + 1) + 0.7:(uav' = site1) & (uav_battery' = uav_battery - D16);
[] uav = site6 & uav_battery > -1-> 0.15:(uav' = site2) & (uav_battery' = uav_battery - D26 - 1) + 0.15:(uav' = site2) & (uav_battery' = uav_battery - D26 + 1) + 0.7:(uav' = site2) & (uav_battery' = uav_battery - D26);
[] uav = site6 & uav_battery > -1-> 0.15:(uav' = site3) & (uav_battery' = uav_battery - D36 - 1) + 0.15:(uav' = site3) & (uav_battery' = uav_battery - D36 + 1) + 0.7:(uav' = site3) & (uav_battery' = uav_battery - D36);
[] uav = site6 & uav_battery > -1-> 0.15:(uav' = site4) & (uav_battery' = uav_battery - D46 - 1) + 0.15:(uav' = site4) & (uav_battery' = uav_battery - D46 + 1) + 0.7:(uav' = site4) & (uav_battery' = uav_battery - D46);
[] uav = site6 & uav_battery > -1-> 0.15:(uav' = site5) & (uav_battery' = uav_battery - D56 - 1) + 0.15:(uav' = site5) & (uav_battery' = uav_battery - D56 + 1) + 0.7:(uav' = site5) & (uav_battery' = uav_battery - D56);
[] uav = site6 & uav_battery > -1-> 0.15:(uav' = site7) & (uav_battery' = uav_battery - D67 - 1) + 0.15:(uav' = site7) & (uav_battery' = uav_battery - D67 + 1) + 0.7:(uav' = site7) & (uav_battery' = uav_battery - D67);
[] uav = site7 & uav_battery > -1-> 0.15:(uav' = site1) & (uav_battery' = uav_battery - D17 - 1) + 0.15:(uav' = site1) & (uav_battery' = uav_battery - D17 + 1) + 0.7:(uav' = site1) & (uav_battery' = uav_battery - D17);
[] uav = site7 & uav_battery > -1-> 0.15:(uav' = site2) & (uav_battery' = uav_battery - D27 - 1) + 0.15:(uav' = site2) & (uav_battery' = uav_battery - D27 + 1) + 0.7:(uav' = site2) & (uav_battery' = uav_battery - D27);
[] uav = site7 & uav_battery > -1-> 0.15:(uav' = site3) & (uav_battery' = uav_battery - D37 - 1) + 0.15:(uav' = site3) & (uav_battery' = uav_battery - D37 + 1) + 0.7:(uav' = site3) & (uav_battery' = uav_battery - D37);
[] uav = site7 & uav_battery > -1-> 0.15:(uav' = site4) & (uav_battery' = uav_battery - D47 - 1) + 0.15:(uav' = site4) & (uav_battery' = uav_battery - D47 + 1) + 0.7:(uav' = site4) & (uav_battery' = uav_battery - D47);
[] uav = site7 & uav_battery > -1-> 0.15:(uav' = site5) & (uav_battery' = uav_battery - D57 - 1) + 0.15:(uav' = site5) & (uav_battery' = uav_battery - D57 + 1) + 0.7:(uav' = site5) & (uav_battery' = uav_battery - D57);
[] uav = site7 & uav_battery > -1-> 0.15:(uav' = site6) & (uav_battery' = uav_battery - D67 - 1) + 0.15:(uav' = site6) & (uav_battery' = uav_battery - D67 + 1) + 0.7:(uav' = site6) & (uav_battery' = uav_battery - D67);


	// TODO: CHECK TO SEE IF BATTERY LEVEL IS -1 THEN YOU GIVE NEGATIVE INFINITY REWARDS
	// TODO: NEED TO ADD THE ACTION OF RECHARGIN AND GIVE NEGATIVE 1 REWARDS
	// RECHARGE
	[recharge] uav_battery > -1 & uav_battery < lvl1-> (uav_battery' = lvl1);
	[recharge] uav_battery > -1 & uav_battery < lvl2-> (uav_battery' = lvl2);
	[recharge] uav_battery > -1 & uav_battery < lvl3-> (uav_battery' = lvl3);
	[recharge] uav_battery > -1 & uav_battery < lvl4-> (uav_battery' = lvl4);
	[recharge] uav_battery > -1 & uav_battery < lvl5-> (uav_battery' = lvl5);
	[recharge] uav_battery > -1 & uav_battery < lvl6-> (uav_battery' = lvl6);
	[recharge] uav_battery > -1 & uav_battery < lvl7-> (uav_battery' = lvl7);
	[recharge] uav_battery > -1 & uav_battery < lvl8-> (uav_battery' = lvl8);
	[recharge] uav_battery > -1 & uav_battery < lvl9-> (uav_battery' = lvl9);
	[recharge] uav_battery > -1 & uav_battery < lvl10-> (uav_battery' = lvl10);
endmodule

module site_one
	s1: bool init false;
	
	[rewards1] s1 = false & uav = site1 -> (s1' = true);
endmodule

// duplicate site modules
module site_two = site_one[rewards1 = rewards2, s1 = s2, site1 = site2] endmodule
module site_three = site_one[rewards1 = rewards3, s1 = s3, site1 = site3] endmodule
module site_four = site_one[rewards1 = rewards4, s1 = s4, site1 = site4] endmodule
module site_five = site_one[rewards1 = rewards5, s1 = s5, site1 = site5] endmodule
module site_six = site_one[rewards1 = rewards6, s1 = s6, site1 = site6] endmodule
module site_seven = site_one[rewards1 = rewards7, s1 = s7, site1 = site7] endmodule
//module site_eight = site_one[rewards1 = rewards8, s1 = s8, site1 = site8] endmodule
//module site_nine = site_one[rewards1 = rewards9, s1 = s9, site1 = site9] endmodule
//module site_ten = site_one[rewards1 = rewards10, s1 = s10, site1 = site10] endmodule
//module site_eleven = site_one[rewards1 = rewards11, s1 = s11, site1 = site11] endmodule
//module site_twelve = site_one[rewards1 = rewards12, s1 = s12, site1 = site12] endmodule
//module site_thirteen = site_one[rewards1 = rewards13, s1 = s13, site1 = site13] endmodule
//module site_fourteen = site_one[rewards1 = rewards14, s1 = s14, site1 = site14] endmodule
//module site_fifteen = site_one[rewards1 = rewards15, s1 = s15, site1 = site15] endmodule



// reward for all sites visited or not
rewards "totalRewards"
	// VISITED A SITE
	[rewards1] uav_battery > -1: 1; 
	[rewards2] uav_battery > -1: 1;
	[rewards3] uav_battery > -1: 1;
	[rewards4] uav_battery > -1: 1;
	[rewards5] uav_battery > -1: 1;
	[rewards6] uav_battery > -1: 1;
	[rewards7] uav_battery > -1: 1;
//	[rewards8] uav_battery > -1: 50;
//	[rewards9] uav_battery > -1: 50;
//	[rewards10] uav_battery > -1: 50;
//	[rewards11] uav_battery > -1: 50;
//	[rewards12] uav_battery > -1: 50;
//	[rewards13] uav_battery > -1: 50;
//	[rewards14] uav_battery > -1: 50;
//	[rewards15] uav_battery > -1: 50;


endrewards

rewards "negatives"
	[] uav_battery < 0 : 100;
	[recharge] true: 1;
endrewards

// finish state
//label "done" = (s1=true & s2=true & s3=true & s4=true) | uav_battery < 0;
