#!/bin/bash

lsof -t -i:5000 | xargs kill -9 
lsof -t -i:5001 | xargs kill -9