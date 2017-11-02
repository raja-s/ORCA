# Optimal Reciprocal Collision Avoidance

The ORCA algorithm, formulated at the University of North Carolina [<a href='#ref-1'>1</a>], is a decentralized collision avoidance algorithm designed with key principles in mind:

- Agents compute their velocities in real-time and can react to a dynamic environment
- Each agent runs the algorithm locally and independently, and does not need to communicate with other agents or a central coordinating unit
- The algorithm is *optimal*, in the sense that every agent deviates as little as possible from its "preferred" route to avoid collisions
- The algorithm guarantees collision-free navigation, under certain conditions

The aim of this project is to build a simple C++ implementation of the ORCA algorithm, based on the original formulation [<a href='#ref-1'>1</a>].

# References

<span id='ref-1'>[1]</span> van den Berg J., Guy S.J., Lin M., Manocha D. (2011) Reciprocal n-Body Collision Avoidance. In: Pradalier C., Siegwart R., Hirzinger G. (eds) Robotics Research. Springer Tracts in Advanced Robotics, vol 70. Springer, Berlin, Heidelberg
