#!/bin/bash

rm -rf rabbitmq2 rabbitmq3
rm -rf rabbitmq1/* rabbitmq1/.erlang.cookie rabbitmq1/.bash_history
cp -R rabbitmq1 rabbitmq2
cp -R rabbitmq1 rabbitmq3
