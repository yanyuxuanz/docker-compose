#!/bin/bash

rm -rf kafka2 kafka3
rm -rf kafka1/config/* kafka1/data/* kafka1/logs/*
cp -R kafka1 kafka2
cp -R kafka1 kafka3

