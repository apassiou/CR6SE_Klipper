#!/usr/bin/env python

#v05.2023 by Duxa
#Simply run and put in values it asks for

mark = float(input('Enter mark spot, recommend 70mm: '))
extrude = mark - 20
print("send Gcode: \n G91\n G1 E" + str(extrude) + " F30")
leftover = float(input("Enter distance to mark after extrusion: "))
actual = mark-leftover
print("Actual amount extruded: " + str(actual))
current = float(input("Enter current rotation_distance from printer.cfg: "))
rotation = current * actual / extrude
print("Current setting: " + str(current))
print("New setting for rotation_distance (round to 3 decimals): " + str(rotation))
