
Kiwix serve Docker image fro Pi (Armv7) --> Modified from <https://github.com/kiwix/kiwix-tools>
========================

- This version of the server image has been modified to run on the raspberrypi with Arm v7 although  can be changed to support pi v6 by changing the base image on Dockerfile from ```FROM arm32v7/alpine``` to ```FROM arm32v6/alpine``` if you are running pi v1


With local ZIM file
-------------------

* Download a ZIM file from <https://wiki.kiwix.org/wiki/Content>

* Given `wikipedia.zim` resides in `/tmp/zim/`, execute the following:

```bash
docker run -v /tmp/zim:/data -p 8080:80 kiwix/kiwix-serve wikipedia.zim
```

With remote ZIM file
--------------------

```bash
docker run -e "DOWNLOAD=https://download.kiwix.org/zim/wikipedia_bm_all.zim" -p 8080:80 kiwix/kiwix-serve
```

Screenshots
-----------

![screenshot_1.png](https://github.com/kiwix/kiwix-tools/raw/master/docker/server/pictures/screenshot_1.png)
![screenshot_2.png](https://github.com/kiwix/kiwix-tools/raw/master/docker/server/pictures/screenshot_2.png)