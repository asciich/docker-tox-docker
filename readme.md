# tox container for testing docker containers

Container to test python packages using tox including docker bindings for container testing.


To test container:

* Mount your directory to ```/test```
* Mount your docker.sock ```/var/run/docker.sock:/var/run/docker.sock```
* Call the ```test_in_tox``` script with the path to the ```.tox``` file (relative to the /test/ directory)

Example for running tox in current directory:

```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/test/ -it asciich/tox test_in_tox .
```


