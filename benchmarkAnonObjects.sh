#!/bin/bash

source benchmark.env

readonly DATA=$*

./out/cpp/MandelbrotBenchmark $DATA
node out/MandelbrotBenchmark.js $DATA
node out/MandelbrotBenchmark.es6.js $DATA
java -jar out/java/MandelbrotBenchmark.jar $DATA
java -jar out/jvm/MandelbrotBenchmark.jar $DATA
hl out/MandelbrotBenchmark.hl $DATA
./out/hl/MandelbrotBenchmark $DATA
mono out/cs/bin/MandelbrotBenchmark.exe $DATA
haxe build/commonAnonObjects.hxml --run MandelbrotBenchmark $DATA
php out/php/index.php $DATA
neko out/MandelbrotBenchmark.n $DATA
python3 out/MandelbrotBenchmark.py $DATA
# lua out/MandelbrotBenchmark.lua $DATA
