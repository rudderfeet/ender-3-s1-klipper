# ender-3-s1-kilpper
<h1>Config files and handy things related to 3D printing on a Creality Ender 3 S1 with Klipper firmware</h1>

I bought Creality's Ender 3 S1 about a month after they came out (around mid 2022) and have been pretty happy with it.  I modded mine to handle more "exotic" materials before the S1 Pro was released and mostly print utility items and the occasional "fun" print.  When Miguel started making a "Professional Firmware" (https://github.com/mriscoc/Ender3V2S1), I was really happy to have extra control of more parameters, and indeed his work is super helpful and worthy of donations.  If you don't need everything Klipper has to offer, and still want to use the stock control/display, I strongly recommend considering his work.  That said, by early 2024, it was hard to ignore the differences between my S1 and Bamboo Labs' A1, P3S and X1C, as well as Creality's K1 series - I knew I wanted to experiment with Klipper to stave off dropping more money on a new printer.

Once you've decided on Klipper, the fastest way to close (some of) that gap is to buy Creality's Sonic Pad for $150 and let it do the hard work, but I already had a Raspberry Pi 3 and 7" touch screen with a stand.  I'm still not able to get the touch screen to work reliably with KlipperScreen, but I have managed to switch to Klipper, Mainsail and a bunch of settings that are working really well for me.  I'll continue to dial these in over time, like getting an accelerometer to tune input shaping, but one of the benefits to a custom route is getting to know your printer, Klipper, and 3D printing much better.  Sure, that's not as much as building your own Voron from scratch, but you get the point!

In this repository, you can see my core Klipper files to compare, contrast and critique what I'm using.  These may work well for you as-is, or may be a little off for your situation, so it's on your shoulders to use a critical eye and take your time.  I'm doing this mainly to back myself up with version control in case I make a stupid mistak with tuning and have to roll back.

<b>For reference, my S1 is fairly-well modded, but I woudn't call it exotic.  All these things have helped in one way or another:</b>
- Replaced power supply with a stronger unit since stock couldn't keep up with higher toolhead and bed temps needed for nylon, polycarbonate, ABS, etc.
- Replaced heatbrake with all metal one from Slice Engineering for higher temps (stock HB has PTFE)
- Replaced heater and thermister with S1 Pro's units (stock can't get to 300C)
- Replaced nozzle with 0.4mm hardened steel unit (for carbon-filled nylon filament)
- Replaced cooling with 3D-printed PETG manifold and stronger fan (helps with higher speeds to reduce stringing and improve bridging)
- Added squash balls as feet to absorb some motion ringing and reduce printing noise
- Replaced spool holder with 3D-printed ball bearing unit - this helps a lot with heavy spools, especially TPU, which can skip in the extruder if it has to pull very hard
- Replaced bed material with garolite (aka G10) and glue stick - I really, really like this for everything, and use little binder clips to hold the plate on the bed
- Added toolhead cable support to reduce twisting stress at the head's base
- Added reflectix under the bed for more efficient heating
- Added a soft enclosure from Amazon and put a rigged a fan with filter on the side to deal with filament fumes

Note that my klipper.bin works on my early S1 with a F103 chip.  Do NOT try on a F4 processor!

<b>Current Status as of 2/4/2024:</b>
- Overall, Klipper and Mainsail are working great on my Raspberry Pi 3B - I'm happy with double the stock speeds using PLA, PETG, ABS, ASA, PA and PC without loss of quality or layer adhesion.  I haven't increased TPU speeds because layer adhesion is even more important with flexible materials for functional prints like camping chair feet and protective hardware covers
- The PID tunes of my hotend and bed are working well
- The tuned pressure advance value is working well
- The hardware retraction values seems pretty good in combination with pressure advance.  I did both of these calibrations back-to-back a couple times
- Jschuh's extended Klipper macros are great especially for improved bed leveling - see https://github.com/jschuh/klipper-macros.  Note that it's really important to modify your slicer's Machine settings to use his scripts, which is why I have a section of files in the Prusa_Slicer folder
- My C615 Camera via Crowsnest is working well enough but could use more tuning
- Raspberry Pi's 7" touchscreen uses I2C to send finger presses, so you have to use "sudo raspi-config" to enable I2C, but I'm struggling to get mine to display reliably. I've given up on that for now and just use a computer nearby to control my prints
- I have NOT YET tuned input shaping.  My latest calibration cube shows faint ghosting in the Y axis, so I plan to get a USB-based accelerometer and dial that in at some point.

Anyway, if you found this page and these are helpful to you, great!  I don't want a coffee, don't smash that Like button, and don't you dare subscribe! :-).  Please channel any donations to others materially evolving the 3D printing hobby - I think we're all indebted to them enough already!
