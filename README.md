# Advent of Code 2020 (Hamler Edition)

![AoC](https://github.com/rolandtritsch/hamler-aoc-2020/blob/trunk/images/aoc-day25.png?raw=true)

To make this work you need to ...

* make sure you have erlang/otp >= 23 installed configured (through [asdf](https://github.com/asdf-vm/asdf) (or comparable))
  * `asdf plugin add erlang && asdf install erlang 23.3 && asdf global erlang 23.3`
* install [hamler](https://github.com/hamler-lang/hamler) using `asdf`
  * `asdf plugin add hamler && asdf install hamler 0.4 && asdf global hamler 0.4`
  * Note: Right now `0.4` works. `0.5` doesn't (still investigating).
* clone the repo
* run `hamler test`
* run `./scripts/genMain.sh > ./src/Main.hm; hamler build && hamler run | grep -v "Force eval"` to generate and run the measurements
