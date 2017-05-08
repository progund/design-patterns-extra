#!/bin/bash

JAVA_VERSION=8
PACKAGES="se.itu.game.cave se.itu.game.main se.itu.game.cave.init se.itu.game.gui"

javadoc -d doc -link  http://docs.oracle.com/javase/${JAVA_VERSION}/docs/api/ $PACKAGES 
