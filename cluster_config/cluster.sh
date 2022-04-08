#!/bin/bash
kops create cluster \
  --cloud=aws \
  --name=ullagallu.xyz \
  --zones=ap-south-1a \
  --master-size=t3a.medium \
  --node-size=t3.micro \
  --master-volume-size 8 \
  --master-count=1 \
  --node-volume-size 8 \
  --node-count=3 \
  --dns-zone=ullagallu.xyz \
  --dns public
kops edit cluster ullagallu.xyz
