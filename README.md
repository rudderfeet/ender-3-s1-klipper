# ender-3-s1-kilpper
<h1>Config files and handy things related to 3D printing on a Creality Ender 3 S1 using Klipper firmware</h1>

I bought Creality's Ender 3 S1 about a month after they came out (around mid 2022) and have been pretty happy with it.  I modded mine to handle more "exotic" materials before the S1 Pro was released and mostly print utility items and the occasional "fun" print.  When Miguel started making the "Professional Firmware," I was really happy to have extra control of various parameters, and indeed his work is super helpful and worthy of donations.  That said, by early 2024, the difference between my S1 and the Bamboo Labs A1, P3S and X1C, and Creality's K1 series, was getting hard to ignore and I knew I wanted to experiment with Klipper.

The fastest way to close (some of) that gap is to buy Creality's Sonic Pad, but I already had a Raspberry Pi 3 and 7" touch screen with a stand.  I'm still not able to get the touch screen to work reliably with KlipperScreen, but I have managed to switch to Klipper, Mainsail and a bunch of settings that are working really well for me.  I'll continue to dial these in over time, such as getting an accelerometer to tune input shaping.

In this repository, you can see my core Klipper files to compare, contrast and critique what I'm using.  These may work well as-is for you, or they may be horribly inappropriate, so it's on your shoulders to use a critical eye and take your time.  These are here mainly to back me up with version control if I make a stupid mistake with tuning.

<b>For reference, my S1 is fairly-well modded, but I woudn't call it exotic.  All these things have helped in one way or another:</b>
- Replaced power supply with a stronger unit since stock couldn't keep up with higher toolhead and bed temps
- Replaced heatbrake with all metal one from Slice Engineering
- Replaced heater and thermister with S1 Pro's units
- Replaced nozzle with 0.4mm hardened steel unit
- Replaced cooling with 3D-printed PETG manifold and stronger fan
- Added squash balls as feet to absorb some motion ringing
- Replaced spool holder with 3D-printed ball bearing unit - this helps a ton with heavy spools, especially TPU
- Replaced bed material with garolite (aka G10) and glue stick - I really, really like this for everything
- Added toolhead cable support to reduce twisting stress at the head base
- Added reflectix under the bed for more efficient heating
- Added an enclosure from Amazon and put a custom fan/filter on the side to deal with ABS fumes

Note that my klipper.bin works on my early S1 with a F103 chip.  Do NOT try on a F4 processor!

<b>Current Status as of 2/4/2024:</b>
- Overall, Klipper and Mainsail are working really well - I'm happy with roughly double the stock performance using PLA, PETG, ABS, ASA, PA and PC without loss of quality or layer adhesion.  I haven't increased TPU speeds because layer adhesion is even more important with flexible materials, especially functional prints like camping chair feet or protective hardware covers
- The PID tunes of my hotend and bed are working well
- The tuned pressure advance value is working well
- Jschuh's extended Klipper macros are great, especially improved bed leveling - see https://github.com/jschuh/klipper-macros.  Note that it's really important to modify your slicer's Machine settings to use his scripts, which is why I have a section of files in the Prusa_Slicer folder
- My C615 Camera via Crowsnest is working well enough but could use more tuning
- Raspberry Pi's 7" touchscreen uses I2C to send finger presses, so you have to use "sudo raspi-config" to enable I2C, but I'm struggling to get mine to display reliably, so I've given up on that for now
