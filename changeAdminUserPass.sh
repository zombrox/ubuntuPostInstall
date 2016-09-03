#!/bin/bash
adminName=$1
echo -e "test" | (passwd --stdin $adminName)

