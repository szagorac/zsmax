# ZScore MAX MSP client

This repository contains Max patches and mxj OSC network client for the ZScore networked music composition and
performance system.
ZScore system code is available in [szcore repository](https://github.com/szagorac/szcore).

Java classes are available in src/main/java directory.
The entry point is mxj object **zscore** while the client logic is implemented in
com.xenaksys.zscore.client.ZscoreClient

ZScore Max patches are stored in src/max/zscore directory.
The main patch is 1_zscore.maxpat

Some scores have a dedicated dev branch (e.g. dev_Dialogs_branch for the "Socket Dialogues" score)

The branch merge flow is: dev_(branch name) -> develop -> master

### Score Packages

Several [ZScore packages](https://bit.ly/zscorepackages), made for preformances of various scores, are available for
download. Packages contain all necessary files required for a performance.

To use a package:

- [download a required zip file](https://bit.ly/zscorepackages)
- unzip it in any directory
- follow included User Guide