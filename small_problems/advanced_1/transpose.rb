=begin
Transpose 3x3
Write a method that takes a 3 x 3 matrix in Array of Arrays format 
and returns the transpose of the original matrix. 
Note that there is a Array#transpose method that does this -- you may not use it for this exercise. 
You also are not allowed to use the Matrix class from the standard library. 
Your task is to do this yourself.

Take care not to modify the original matrix: 
you must produce a new matrix and leave the original matrix unchanged.

PROBLEM
inputs: nested array (3x3 matrix)
outputs: nested array (3x3 matrix)
requirements: transpose the array by swapping the rows and columns
questinos: mutate? (no), always int (yes), empty? (no)

DATA
row array: matrix[1]
column array: matrix[1][0] + matrix[2][0] + matrix[3][0]

ALGO
extract each column of the matrix into a new array
stitch the arrays together to form a transposed matrix

PSEUDO
transposed_matrix = []
for col in 0..2
  for row in 0..2
    transposed_matrix[col][row] = matrix[row][col]
  end
end
transposed_matrix
=end

require 'pry'

def transpose(matrix)
transposed_matrix = [[],[],[]]

for col in 0..2
  for row in 0..2
    transposed_matrix[col][row] = matrix[row][col]
  end
end

transposed_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

=begin
Transpose MxN
In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as represented by a ruby Array of Arrays.

Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices. Any matrix can be transposed by simply switching columns with rows.

Modify your transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column.
=end

def transpose_mxn(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size

  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  
  result
end

p transpose_mxn([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose_mxn([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose_mxn([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose_mxn([[1]]) == [[1]]