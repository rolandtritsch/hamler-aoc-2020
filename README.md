# Advent of Code 2020 (Hamler Edition)

![AoC](https://github.com/rolandtritsch/hamler-aoc-2020/blob/trunk/images/aoc-day25.png?raw=true)

This is a special branch to analyse a performace problem.

`part1'` runs 10 times faster than `part1`. The only difference is that the recursion has an extra parameter ...

```
    foodsFreeOfAllergens = go foods false where
        go foods' true = foods'
        go foods' false = go foods'' (foods' == foods'') where
            foods'' = removeIngredientsBySingleton $ removeIngredientsByIntersection foods' 
```

... vs. ...

```
    (foodsFreeOfAllergens, _) = go foods false 0 where
        go foods' true c = (foods', c)
        go foods' false c = go foods'' (foods' == foods'') (c + 1) where
            foods'' = removeIngredientsBySingleton $ removeIngredientsByIntersection foods' 
```

My guess is ...

* the first implementation should be tail recursive ... but isn't
* and the additional parameter forces a tail recursion ... for a reason I do not understand

To see the problem you need to run ...

`hamler build && hamler run`

<hr>

To make this work you need to ...

* make sure you have erlang/otp >= 23 installed configured
(through [asdf](https://github.com/asdf-vm/asdf) (or comparable))
* install [hamler](https://github.com/hamler-lang)
  * Note: for this to work you need to build from the repo (or need at least hamler 0.23 (which was not published at the time, when this work was done)). 
* clone the repo
* run `hamler test`
* run `./scripts/genMain.sh > ./src/Main.hm; hamler build && hamler run | grep -v "Force eval"` to generate and run the measurements
