Title: Planck 40% Ortholinear Keyboard Review
Date: 2015-04-30 15:00:34
Modified: 2015-04-30 15:00:34
Category: Mechanical Keyboards
Tags: keyboards, diy
slug: planck-40-ortholinear-keyboard-review
Authors: Nathan Chowning
Summary: I have been a mechanical keyboard enthusiast for several years now. I frequently lurke at [r/mechanicalkeyboards](http://reddit.com/r/mechanicalkeyboards) and [GeekHack](http://geekhack.org). At work I use a Cooler Master Quickfire Rapid with Cherry MX Blue switches and at home I use a Unicomp Customizer 104 with buckling spring switches. A little over a month ago I stumbled upon a DIY 40% ortholinear keyboard called the [Planck](http://planckkeyboard.com). It was created by [Jack Humbert](http://www.reddit.com/user/jackhumbert) who sells the parts at [ortholinearkeyboards.com](http://ortholinearkeyboards.com). Building my own keyboard (and having full control over the firmware) sounded like a great experiment and I've never used an ortholinear (grid keys) keyboard, so I decided to go for it.

I have been a mechanical keyboard enthusiast for several years now. I frequently lurke at [r/mechanicalkeyboards](http://reddit.com/r/mechanicalkeyboards) and [GeekHack](http://geekhack.org). At work I use a Cooler Master Quickfire Rapid with Cherry MX Blue switches and at home I use a Unicomp Customizer 104 with buckling spring switches.

A little over a month ago I stumbled upon a DIY 40% ortholinear keyboard called the [Planck](http://planckkeyboard.com). It was created by [Jack Humbert](http://www.reddit.com/user/jackhumbert) who sells the parts at [ortholinearkeyboards.com](http://ortholinearkeyboards.com). Building my own keyboard (and having full control over the firmware) sounded like a great experiment and I've never used an ortholinear (grid keys) keyboard, so I decided to go for it.

Around the time that I placed my order, Jack was working on finalizing some prototypes for Planck PCBs. I was lucky enough to have the opportunity to purchase one of these prototype boards & try it out! Below is my "build log" of sorts.

## Parts & Preparation
For my Planck keyboard I decided to go with the standard MIT top plate (it allows for a space bar that is 2 keys wide), a standard bottom plate, the Planck prototype PCB, a piece of Cherry wood for the middle, and cherry mx blue switches. All of this arrived in a remarkably small package on Tuesday. After unwrapping it, I was greeted by these beauties:

[![](http://nathan.chowning.me/media/small/planck001_thumb.jpg)](http://nathan.chowning.me/media/large/planck001.jpg)
[![](http://nathan.chowning.me/media/small/planck002_thumb.jpg)](http://nathan.chowning.me/media/large/planck002.jpg)

I was shocked at the quality of everything. The plates and middle piece were very solid & precisely cut. The PCB was also exceptionally high quality. Everything except for the switches is already soldered to the board. That'll make things quite a bit easier!

[![](http://nathan.chowning.me/media/small/planck003_thumb.jpg)](http://nathan.chowning.me/media/large/planck003.jpg)

## Assembly
First things first, I needed to put all of the switches into the plate. These just snap into place so it was not a very arduous task.

[![](http://nathan.chowning.me/media/small/planck004_thumb.jpg)](http://nathan.chowning.me/media/large/planck004.jpg)
[![](http://nathan.chowning.me/media/small/planck005_thumb.jpg)](http://nathan.chowning.me/media/large/planck005.jpg)

Next I needed to line up all of the switch legs to fit into the Planck PCB's holes. The PCB is quite hard to fit onto the switches. Once you have it all lined up, you have to apply quite a bit of pressure to different areas of the PCB to snap the switches into place.

[![](http://nathan.chowning.me/media/small/planck006_thumb.jpg)](http://nathan.chowning.me/media/large/planck006.jpg)
[![](http://nathan.chowning.me/media/small/planck007_thumb.jpg)](http://nathan.chowning.me/media/large/planck007.jpg)

Lastly they needed to be soldered to the board. Somehow I managed to crush a leg to one of my switches under the PCB. Naturally I realized this after I had already soldered several switches to the board. With a flat head screwdriver and some force, I was able to pop the switch out of the plate & straighten out the leg. The rest of the soldering took maybe 10-15 mins. It was very easy!

[![](http://nathan.chowning.me/media/small/planck008_thumb.jpg)](http://nathan.chowning.me/media/large/planck008.jpg)

Here you can see the Planck & Ortholinear Keyboards branding on the PCB as well as its revision.

[![](http://nathan.chowning.me/media/small/planck009_thumb.jpg)](http://nathan.chowning.me/media/large/planck009.jpg)

This is what makes the magic happen - The microcontroller & related components. As you can see it's using an ATMEL MEGA32U4.

[![](http://nathan.chowning.me/media/small/planck010_thumb.jpg)](http://nathan.chowning.me/media/large/planck010.jpg)
[![](http://nathan.chowning.me/media/small/planck011_thumb.jpg)](http://nathan.chowning.me/media/large/planck011.jpg)

And here is my piece of finely/precisely cut cherry wood to go between the two steel plates. This thing is gorgeous. I plan on getting some appropriate stain & sealer for it.

[![](http://nathan.chowning.me/media/small/planck012_thumb.jpg)](http://nathan.chowning.me/media/large/planck012.jpg)
[![](http://nathan.chowning.me/media/small/planck013_thumb.jpg)](http://nathan.chowning.me/media/large/planck013.jpg)

## Finished Planck
The entire assembly process took about an hour or two. This included the aforementioned switch leg debacle as well as the time it took for me to fish part of the space bar stabilizers out of my couch after dropping it. Please excuse the keycaps. They're temporary. I plan on replacing them in the relative near future.

[![](http://nathan.chowning.me/media/small/planck014_thumb.jpg)](http://nathan.chowning.me/media/large/planck014.jpg)
[![](http://nathan.chowning.me/media/small/planck015_thumb.jpg)](http://nathan.chowning.me/media/large/planck015.jpg)

## Firmware Flashing
One of the biggest things that drew me to the Planck was the fact that I could run open firmware on it giving me the freedom to basically make it do whatever I want. Jack has a modified version of the [tmk_keyboard](https://github.com/tmk/tmk_keyboard) on [his github](https://github.com/jackhumbert/tmk_keyboard/tree/master/keyboard/planck) that has full support for the Planck. He also provides some instructions & tools to easily create your own keymap.

My keymap layout can be found [here](http://www.keyboard-layout-editor.com/#/layouts/aaba6043a50f33c8e4afdfd7c942b80f). So far it seems to be working pretty well for me. It's taking a little adjusting for the backspace & delete key to be under my left thumb but I really feel like that will be more efficient once I get used to it.

Flashing the new firmware to the board is a pretty easy process under Linux. First you'll need to install some avr packages so that you can build the firmware. Under Arch Linux the packages are avr-libc and avr-gcc. You'll also need [dfu-programmer](https://github.com/dfu-programmer/dfu-programmer) which is available in the [AUR](https://aur.archlinux.org/packages/dfu-programmer/). Once that is installed, you should be able to build the firmware with a simple "make". You can pass extra options to make if you want to build with a custom keymap etc... Check out [Jack's github](https://github.com/jackhumbert/tmk_keyboard/tree/master/keyboard/planck) for more info on that.

Now that your development environment is setup, you'll need to put your keyboard into DFU mode by pressing the little gold button on the underside of the PCB. To confirm that it's in DFU mode, you can look at the output of "lsusb". You should see an atmel entry in the list.

When your keyboard is in DFU mode, uploading the new firmware is as easy as running "make dfu". The old firmware will get erased, your new firmware will get uploaded, and the keyboard will restart with your new firmware.

## Conclusion
Adjusting to the ortholinear layout (and tiny 40% layout) has been a little challenging but so far I am enjoying my Planck keyboard very much! As I mentioned before, the build quality of each part is extremely high. I was not expecting the parts to be of this quality. With the new PCB, assembly is a breeze. Had I wired up my switch grid with plain ole wires, it probably would have taken me at least 2-3x as long to assemble and I doubt it would have been as sturdy. I can't recommend [ortholinearkeyboards.com](http://ortholinearkeyboards.com) enough!
