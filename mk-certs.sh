#!/bin/bash
state=Virginia
city=Lovettsville
org=demoland
hostname=terraform.local

mkdir -p  ./certs
cd ./certs
openssl req -x509 -nodes -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365 -subj "/C=US/ST=${state}/L=${city}/O=${org}/CN=${hostname}"
cp cert.pem bundle.pem

