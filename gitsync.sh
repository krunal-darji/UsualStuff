#!/bin/bash

for i in {production,staging}{,5};do
    git checkout $i
    git pull origin $i
done