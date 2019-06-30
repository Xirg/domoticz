#!/usr/bin/python

# Import soco and get a SoCo instance
import soco

#device = soco.discovery.any_soco()
#Discover is not working right now
device = soco.discovery.by_name("Stue")

# Dial up the volume (just a bit) and play
device.volume = 10
device.stop()

