### Testing with XVFB spike

Our ui tests needed to run in docker containers. All good in theory with XVFB, but 
trickier when something goes wrong. This is a proof-of-concept using VNC to 
create a remote-access to the container.

Usage: 

    ./launch-docker.sh #Build and run container

After container builds and runs, then you may VNC into the container by accessing it on port `5900`. SSH is also open.

Before anyone asks, yes I'm [aware](http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/) of other approaches
using pure X server or `docker exec` or `docker attach`, and while I'm certainly no expert, they work just fine. 
However, we needed SSH/VNC for our use-case. 

There is **no security whatsoever** on this container. It's intention is to be used within a build pipeline. There is a sudoer-user `test` with the password `test`. 
