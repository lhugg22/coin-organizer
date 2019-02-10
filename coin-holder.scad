//Auhtor: Louis Huggins
//Project: Coin Holder
//Part: Coin Holder
//Date Start: 11/25/18

//cup holder is diam of 66mm
//cup holder size is about 80mm

//Phone Holder 11.5mm x 74mm

diamHolder = 80;

hSoda = 122;
diamSoda = 66;

module coin_holder() {
	//Constants
	pi = 3.14;
	diamQuarter = 24.15;
	hQuarter = 1.75;
	diamNickle = 21.2;
	hNickle = 1.9;
	diamPenny = 19;
	hPenny = 1.45;
	diamDime = 17.85;
	hDime = 1.4;

	diamSoda = 66;
	hSoda = 122;

	difference(){
		//additions
		union(){
			hull(){
				translate([0, 0, hSoda/2]) 
					cylinder(h=hSoda, r=diamHolder/2, center=true, $fn=100);
				translate([0, 0, (hSoda*1.1)/2])
					cylinder(h=hSoda*1.1, r=11, center=true, $fn=100);
			}
		}

		//subtractions
		union(){
			//Quarters
			translate([diamHolder*.23, diamHolder*.26, 2*hSoda/2+3]) 
				cylinder(h=hSoda*2, r=1.02*diamQuarter/2, center=true, $fn=50);
			translate([diamHolder*.02, -diamHolder*.35, 2*hSoda/2+3]) 
				cylinder(h=hSoda*2, r=1.02*diamQuarter/2, center=true, $fn=50);
			//Nicles
			translate([-diamHolder*.08, diamHolder*.36, 2*hSoda/2+3])
				cylinder(h=hSoda*2, r=1.02*diamNickle/2, center=true, $fn=50);
			//Pennies
			translate([-diamHolder*.31, -diamHolder*.23, 2*hSoda/2+3])
				cylinder(h=hSoda*2, r=1.02*diamPenny/2, center=true, $fn=50);
			//Dimes
			translate([diamHolder*.33, -diamHolder*.22, 2*hSoda/2+3])
				cylinder(h=hSoda*2, r=1.02*diamDime/2, center=true, $fn=50);
			translate([-diamHolder*.33, diamHolder*.22, 2*hSoda/2+3])
				cylinder(h=hSoda*2, r=1.02*diamDime/2, center=true, $fn=50);

			//cuttouts for style
			translate([0,0, hSoda/2]) rotate([0,0,45])
				cube(size=[11,11,hSoda*2], center=true);
			//Phone Cuttout
			translate([0, 0, 2*hSoda/2+3]) color("LightSteelBlue")
				cube(size=[74, 11.5, hSoda*2], center=true);
			//Flattening the bottom
			translate([0, 0, -50])
				cylinder(h=50, r=diamHolder/2, center=true, $fn=50);
		}
	}
	
}

// translate([0,3,hSoda/2]) color("LightSteelBlue") cylinder(h=hSoda, r=diamSoda/2, center=true, $fn=50);
//translate([0,0,hSoda/2]) coin_holder();
coin_holder();




