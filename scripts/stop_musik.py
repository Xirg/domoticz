#!/usr/bin/python

# Import soco and get a SoCo instance
import soco

speakers = soco.discover()

# Display a list of speakers
for speaker in speakers:
  
  # Dial up the volume (just a bit) and play
  speaker.volume = 10
  speaker.stop()


