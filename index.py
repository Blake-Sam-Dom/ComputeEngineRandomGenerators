#!/usr/bin/python

import cgitb
import random

cgitb.enable()
print("Content-Type: text/html")
print()
print(random.randint(1,1000000), end="")
