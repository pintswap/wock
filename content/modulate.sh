#!/bin/bash


mkdir -p ./generated
for I in {1..200}
do
  convert ./source.png -modulate 100,100,${I} ./generated/${I}.png
done
