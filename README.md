It's a bad idea to install R locally or rely on the version provided to you by the university.
Ultimately it's a big headache. Recently we have learnt that at least 4 different R versions are used within the classroom.
And obviously this problem is even more pronounced once we look at packages.

This problem is not specific to R. Similar issues are present when dealing with Matlab, Python or your fav. database.
The elegant solution is to rely on docker. 

You won't have to install docker for this course but going forward you probably want to change gears.

This container relies on a rocker image for tidyverse and install the cvxr package which you may need for convex programming.
