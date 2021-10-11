#!/bin/bash

#bash make_aspect.sh

export PATH=$HOME/aspectj1.9/bin:$PATH
export CLASSPATH=$HOME/aspectj1.9/lib

ajc -1.8 -cp ./$tools_folder/junit-4.13.2.jar -outxml -outjar ./$tools_folder/aspect.jar Trace.aj
