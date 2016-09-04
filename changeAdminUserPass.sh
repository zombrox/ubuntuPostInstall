#!/bin/bash
adminName=$1
echo "$adminName:test" | chpasswd
