APK Decompile
========================

This is a shell script using `dex2jar` and `jd-gui` to decompile the apk file and open the JAR viewer automatically.

# How to use
The dex2jar & jd-gui is already in this repo, just clone and run the script by the following command.
1. `git clone <REPO>`
2. `cd ApkDecomile/`
3. `./decompileApk.sh <File.apk>`

# Q&A
### Q1. Is there any file or directory will be created by this script?
* The tempory files (jar) will be created under the `/tmp` and removed after closing the `jd-gui` automatically.

### Q2. There are some error happend on `dex2jar` or `jd-gui` jar file
* This repository is using [Git LFS](https://git-lfs.github.com/), is you have any issue on the jar files, please run the following command and try again.
  * `git lfs pull`
