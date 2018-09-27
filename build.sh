#!/bin/bash

echo -e "\e[33mBuilding Sphynx Docs.. \e[39mD"
sphinx-build -nWT -b html source/ build/
echo -e "\e[33mCopying over static landing page.. \e[39m"
cp -R landing/* build/
echo -e "\e[32mDone! \e[39m"
