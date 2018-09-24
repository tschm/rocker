This litte post is most useful for those of you that plan to go forward with R.

It's a bad idea to install R locally or rely on the version provided to you by the university. In fact, it's a bad idea
that the university is providing (outdated versions of) R.
 
Recently we have learnt that at least 4 different R versions are used within the classroom.
And obviously this problem is even more pronounced once we look at packages. This problem is not specific to R. 
Similar issues are present when dealing with Matlab, Python or your fav. database. It's called **dependency hell**.

Imagine you create a little R tool to run some optimization. It's part of your master thesis but then you didn't take
into account that it won't run on the computer of your supervisor as she/he is running a different R version or is unable
to install a particular package (such as CVXR). 
The problem is that your code always has to run in a much bigger environment which could be very different on your personal machine.

The solution is to create an entire environment and make it available to all users of your package.
I have created such an environment for you. This environment is a 700MB monster which you don't send around via email.
It's currently hosted on **dockerhub**. 

To take advantage of such environments you would have to install **docker**. Note that docker will be extremely helpful
also later when we install a database, run a server on aws or host your very own webpage. It all boils down to running
a **container** that contains that environment.


docker run -p 8787:8787 -v $(pwd)/scripts:/home/rstudio/kitematic tschm/rocker