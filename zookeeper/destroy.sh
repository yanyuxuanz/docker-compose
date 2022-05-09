#!/bin/bash

rm -rf zookeeper2 zookeeper3
rm -rf zookeeper1/data/* zookeeper1/datalog/* zookeeper1/logs/*
cp -R zookeeper1 zookeeper2
cp -R zookeeper1 zookeeper3

