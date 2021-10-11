#!/bin/bash

#bash run.sh Codec 1b

bash check_env.sh

export tools_folder=tools
mkdir -p $tools_folder/aspectj

exoport root_folder=$(PWD)
bash download_tools.sh
bash make_aspect.sh

project=$1
version=$2

export projects_folder=projects
path=$(echo "${project}_${version}" | awk '{print tolower($0)}')
bash d4j.sh $project $version ./$projects_folder/$path |& tee -a ./"${path}_script_log.txt"
bash log.sh ./$projects_folder/$path |& tee -a ./"${path}_script_log.txt"
