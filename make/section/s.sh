#!/bin/sh
gcc -c section.c -o section.o
gcc -T s.lds section.o -o section  -Map section.map

readelf -S section
