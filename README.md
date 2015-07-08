### Testing with XVFB spike

Our ui tests needed to run in docker containers. All good in theory with XVFB, but 
trickier when something goes wrong. This is a proof-of-concept using VNC to 
create a remote-access to the container.

Usage: 

    ./launch-docker.sh #Build and run container
