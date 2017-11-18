# Optimal Reciprocal Collision Avoidance

The *Optimal Reciprocal Collision Avoidance* (ORCA) algorithm, formulated at the University of North Carolina [<a href='#ref-1'>1</a>], is a fully decentralized collision avoidance algorithm designed with key principles in mind:

- Agents compute their velocities in real-time and can react to a dynamic environment
- Each agent runs the algorithm locally and independently, and does not need to communicate with other agents or a central coordinating unit
- The algorithm is *optimal*, in the sense that every agent deviates as little as possible from its "preferred" route to avoid collisions
- The algorithm guarantees collision-free navigation, under certain conditions

The aim of this project is to build a simple C++ implementation of the ORCA algorithm, based on the original formulation [<a href='#ref-1'>1</a>] as well as the algorithm for solving the Linear Program, as described in *Computational Geometry, Algorithms and Applications, Third Edition* [<a href='#ref-2'>2</a>].

# References

<p id='ref-1'>[1] van den Berg J., Guy S.J., Lin M., Manocha D. (2011) Reciprocal <i>n</i>-Body Collision Avoidance. In: Pradalier C., Siegwart R., Hirzinger G. (eds) Robotics Research. <i>Springer Tracts in Advanced Robotics</i>, vol 70. Springer, Berlin, Heidelberg</p>

<p id='ref-2'>[2] M. de Berg, O. Cheong, M. van Kreveld, M. Overmars. <i>Computational Geometry: Algorithms and Applications.</i> Springer-Verlag, 2008.</p>
