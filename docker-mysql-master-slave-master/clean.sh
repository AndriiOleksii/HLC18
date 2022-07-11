#!/bin/bash

docker-compose down
rm -rf ./master/data/*
rm -rf ./slave_1/data/*
rm -rf ./slave_2/data/*