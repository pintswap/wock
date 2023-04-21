#!/bin/bash


mkdir -p ../images/generated
for I in {1..200}
do
  convert ../images/source.png -modulate 100,100,${I} ../images/generated/${I}.png
done
