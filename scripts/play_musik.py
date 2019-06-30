#!/usr/bin/python

# Import soco and get a SoCo instance
import soco

#device = soco.discovery.any_soco()
#Discover is not working right now
device = soco.discovery.by_name("Stue")

# Dial up the volume (just a bit) and play
device.volume = 10

#device.play()


#P3
device.play_uri(uri='x-sonosapi-stream:s24861?sid=254&flags=8224&sn=0',title='DR P3')

#P5
#device.play_uri(uri='x-sonosapi-stream:s69060?sid=254&flags=8224&sn=0',title='DR P5')
