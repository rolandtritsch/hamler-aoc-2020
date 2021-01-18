# Advent of Code 2020 (Hamler Edition)

![AoC](https://github.com/rolandtritsch/hamler-aoc-2020/blob/trunk/images/aoc-day25.png?raw=true)

To make this work you need to ...

* make sure you have erlang/otp >= 23 installed configured
(through [asdf](https://github.com/asdf-vm/asdf) (or comparable))
* install [hamler](https://github.com/hamler-lang)
  * Note: for this to work you need to build from the repo (or need at least hamler 0.23 (which was not published at the time, when this work was done)). 
* clone the repo
* run `hamler test`
* run `./scripts/genMain.sh > ./src/Main.hm; hamler build && hamler run | grep -v "Force eval"` to generate and run the measurements
