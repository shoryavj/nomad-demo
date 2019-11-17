#!/bin/bash

echo "Hello There!"

echo "Cloning started..."

git clone $ABC WORKDIR
cd WORKDIR
git clone $ABC3
cd asd

#
cd dffff
dotnet restore
dotnet build
#cd JobUpdate
#pwd
dotnet run -- $ABC2
#
#
cd ../..

dotnet restore

dotnet build 
echo "Restore complete"


#cd Codebit
#cd demo
#cd server



#dotnet test

echo "Test Successfully Passed"

