import numpy as np
import os
import sys

os.environ['VAR1'] = 'value1'
os.environ['VAR2'] = 'value2'

def main():
    if len(sys.argv) != 3:
        print("Usage: python script.py <arg1> <arg2>")
        return
    
    arg1 = float(sys.argv[1])
    arg2 = float(sys.argv[2])
    
    arr1 = np.arange(4, dtype=np.float_).reshape(2, 2)

    print('First array:')
    print(arr1)

    print('\nSecond array:')
    arr2 = np.array([arg1, arg2])
    print(arr2)

    print('\nAdding the two arrays:')
    print(np.add(arr1, arr2))

    print('\nSubtracting the two arrays:')
    print(np.subtract(arr1, arr2))

    print('\nMultiplying the two arrays:')
    print(np.multiply(arr1, arr2))

    print('\nDividing the two arrays:')
    print(np.divide(arr1, arr2))

if __name__ == "__main__":
    main()
