#!/bin/bash

find -type f -name app.py -exec sed -i -r 's/"chain"/"chain1"/g' {} \;
find -type f -name app.py -exec sed -i -r 's/'postgres'/'postgres1'/g' {} \;
find -type f -name app.py -exec sed -i -r 's/123/1234/g' {} \;
find -type f -name app.py -exec sed -i -r 's/'127.0.0.1'/'localhost'/g' {} \;
