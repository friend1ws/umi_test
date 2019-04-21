#! /usr/bin/env python3

import sys

input_file = sys.argv[1]

with open(input_file, 'r') as hin:
    for line in hin:
        F = line.rstrip('\n').split('\t')
        if F[1] != F[2]: continue
        F[1] = str(int(F[1]) - 1)
        print('\t'.join(F))

