# Input: an integer n > 1.
 
#  Let A be an array of Boolean values, indexed by integers 2 to n,
#  initially all set to true.
 
#  for i = 2, 3, 4, ..., not exceeding sqrt(n):
#    if A[i] is true:
#      for j = i2, i2+i, i2+2i, i2+3i, ..., not exceeding n:
#        A[j] := false.
 
#  Output: all i such that A[i] is true.

a = [0]*500
for i in range (0,500):
	a[i] = True
import math
j = math.sqrt(500)
j = int(round(j))

for i in range (2,j):
	if a[i]:
		for j in range (0,500):
			temp = i*i + i*j
			if (temp>=500):
				break
			else:
				a[temp] = False

for i in range (100,400):
	if a[i]:
		print i,

# 101 103 107 109 113 127 131 137 139 149 151 157 163 167 173 179 181 191 193 197 
# 199 211 223 227 229 233 239 241 251 257 263 269 271
# 277 281 283 293 307 311 313 317 331 337 347 349 353 359 367 373 379 383 389 397