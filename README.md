# Optimal Reciprocal Collision Avoidance

* [Introduction](#introduction)
* [How to use](#how-to-use)
  * [Building](#building)
  * [Running](#running)
  * [Debugging](#debugging)
  * [Cleaning up](#cleaning-up)
* [Known issues](#known-issues)
* [References](#references)

## Introduction

The *Optimal Reciprocal Collision Avoidance* (ORCA) algorithm, formulated at the University of North Carolina [<a href='#ref-1'>1</a>], is a fully decentralized collision avoidance algorithm designed with key principles in mind:

- Agents compute their velocities in real-time and can react to a dynamic environment
- Each agent runs the algorithm locally and independently, and does not need to communicate with other agents or a central coordinating unit
- The algorithm is *optimal*, in the sense that every agent deviates as little as possible from its "preferred" route to avoid collisions
- The algorithm guarantees collision-free navigation, under certain conditions

The aim of this project is to build a simple C++ implementation of the ORCA algorithm, based on the original formulation [<a href='#ref-1'>1</a>] as well as the algorithm for solving the Linear Program, as described in *Computational Geometry, Algorithms and Applications, Third Edition* [<a href='#ref-2'>2</a>].

## How to use

### Building

The program can be built as follows:

```shell
make
```

This will create all the object files from the source code, then it will create the binary `bin/demo`.

### Running

The program can be run (it will also be built if not done beforehand) as follows:

```shell
make run
```

This should open a window with a visual demonstration of the implementation in action.
It should also produce the following output:

```text
Initializing the ORCA system...
Creating a separate thread to run the ORCA loop...
Started the ORCA loop.
```

And, once the agents reach their destination:

```text
All agents have converged to their final destinations.
```

### Debugging

The program can be compiled with debug flags and debugged (requires `gdb` to be installed) as follows:

```shell
make debug
```

### Cleaning up

Finally, object and binary files can be cleaned up as follows:

```shell
make clean
```

## Known issues

The implementation is still incomplete as there are known bugs (see [open issues](https://github.com/raja-s/ORCA/issues)).

## References

<p id='ref-1'>[1] van den Berg J., Guy S.J., Lin M., Manocha D. (2011) Reciprocal <i>n</i>-Body Collision Avoidance. In: Pradalier C., Siegwart R., Hirzinger G. (eds) Robotics Research. <i>Springer Tracts in Advanced Robotics</i>, vol 70. Springer, Berlin, Heidelberg</p>

<p id='ref-2'>[2] M. de Berg, O. Cheong, M. van Kreveld, M. Overmars. <i>Computational Geometry: Algorithms and Applications.</i> Springer-Verlag, 2008.</p>
