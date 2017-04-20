#!/bin/bash

rsync --delete --exclude=.git -ra ./* tooltime@139.59.208.110:./

