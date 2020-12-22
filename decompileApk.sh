#!/bin/bash

SCRIPT_DIR=`dirname $0`
# JD-GUI
JD_GUI="$SCRIPT_DIR/jd-gui/jd-gui.jar"

DATA_STAMP=`date +"%Y%m%d"`
TIME_STAMP=$DATA_STAMP\_`date +"%H%M%S"`
OUTPUT_ROOT="/tmp/"
OUTPUT_PATH="$OUTPUT_ROOT/extract_$TIME_STAMP"
APK_NAME=$1
JAR_NAME=`basename -s .apk $APK_NAME`.jar
SCRIPT="$SCRIPT_DIR/dex2jar-2.0/d2j-dex2jar.sh"


# Create output folder
mkdir -p $OUTPUT_PATH

# dex to jar
$SCRIPT $APK_NAME -nc -o $OUTPUT_PATH/$JAR_NAME

# open jar
java -jar $JD_GUI $OUTPUT_PATH/$JAR_NAME

# Remove grnerated files
rm -rf $OUTPUT_PATH
