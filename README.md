jffs2extract
============

A simple tool to extract JFFS2 image files. Currently only tested on Mac OS X. Based on code ripped out from the [mtd-utils](https://github.com/vamanea/mtd-utils) project.

The reason I put this together is to simplify batch extracting JFF2 images without having to rely on kernel support.

Use it like the standard `tar` command.

### How to build ###

* Clone this repo
* `make`

### Known issues ###
* This project is very immature, so bugs can be expected. Use it at your own risk.
* Does not extract special files.
* Does not extract metadata (file modes, date/times, owners, ...)
* Filename specification is limited: No pattern matching, no dup checking (i.e. wrong algorithm compared with tar).
