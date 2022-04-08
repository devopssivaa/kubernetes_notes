#!/bin/bash
kops edit ig --name=ullagallu.xyz nodes-ap-south-1a &&
kops edit ig --name=ullagallu.xyz master-ap-south-1a &&
kops update cluster --name ullagallu.xyz --yes --admin