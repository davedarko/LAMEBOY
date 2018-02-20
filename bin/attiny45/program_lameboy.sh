#!/bin/bash
avrdude -c usbasp -p t45 -U lfuse:w:0xe2:m -U hfuse:w:0xdf:m
avrdude -c usbasp -p t45 -U flash:w:cyz_rgb_slave_attiny45.hex 
