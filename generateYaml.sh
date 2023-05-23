#!/bin/bash

ipv4Address=$1
portNumber=$2

export IPV4_ADDRESS=$ipv4Address
export PORT_NUMBER=$portNumber
rm -rf service.yaml; envsubst <"service-template.yaml"> "service.yaml";
