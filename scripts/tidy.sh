#!/bin/bash

isort src/

autopep8 --in-place --recursive src/*.py
