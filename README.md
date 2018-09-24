This post has no relevance for your exam. Nevertheless for those of you who will continue with R or are interested in a modern approach using it:

It's a (imho) bad idea to install R locally or rely on the version provided to you by the university. In fact, it's a bad idea
by the university to provide (outdated versions of) R. 
 
Recently we have learnt that at least 4 different R versions are used within the classroom.
And obviously this problem is even more pronounced once we look at packages. This problem is not specific to R. 
Similar issues are present when dealing with Matlab, Python or your fav. database. It's called **dependency hell**.

Imagine you create a little R tool to run some optimization. It's part of your master thesis but then you didn't take
into account that it won't run on the computer of your supervisor as she/he is running a different R version or is unable
to install a particular package (such as CVXR). 
The problem is that your code always has to run in a much bigger environment which could be very different on your personal machine.

The solution is to create an entire environment and make it available to users of your software.
I have created such an environment for you. This environment is a 2GB monster which you don't send around via email.
It's currently hosted on **dockerhub**. 

To take advantage of such environments you would have to install **docker**. Note that docker will be extremely helpful
also later when we install a database, run a server on aws or host your very own webpage. It all boils down to running
a **container** that contains that environment.

If you then execute

docker run -p 8787:8787 tschm/rocker

you have an entire R system (with RStudio, CVXR and tidyverse preinstalled). 

You may want to share a local folder with your container. This is explained in great detail at
https://www.rocker-project.org/use/shared_volumes/

I will try to have a chat with the local IT team. It might be helpful to install docker on the local machines provided by the university.

The container I have constructed is documented here:
https://hub.docker.com/r/tschm/rocker/

