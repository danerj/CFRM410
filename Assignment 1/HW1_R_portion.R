##### Exercise 3 ####

# using c() command creates a vector that may be filled with data
# cbind command concatenates multiple vectors
A <- cbind(c(1,2,3),c(4,5,6))

# a vector can also be created as a sequence by using a colon to create a vector
# (with step size 1 if only two arguments are given) from the number on the 
# left side of the colon up to the right side number
b <- 1:3

# adding a vector to a matrix will work if the columns of the matrix are as
# long as the vector. This will add the vector pairwise to each column using 
# the rules we would expect if one vector is added to another vector.
C <- A + b # We have C[i,j] = A[i,j] + b[i]

#### Exercise 4 ####

# (a)
# letters is a built in vector of lowercase letters used in English. To find
# a letter call the index associated with that letter's position in the alphabet
my_last_name <- letters[c(10,15,8,14,19,15,14)]

# (b)

# LETTERS is similar to the built in 'letters' vector except that it includes
# uppercase letters.
my_last_name_capitalized <- c(LETTERS[10],letters[c(15,8,14,19,15,14)])

# (c)
my_first_name_capitalized <- c(LETTERS[4],letters[c(1,14,5)])

# (d)
# concatentae previous collections of characters to appear as a full
# name using paste, which concatenates vectors after converting to char
# collapse will put in added characters while using paste
my_full_name <- paste(c(paste(my_first_name_capitalized,collapse=""),
                 paste(my_last_name_capitalized,collapse = "")),collapse = " ")
# (e)
# using a logical vector we subset the 'letters' vector such that
# the letters a,b,c,d,e,v,w,x,y,z are extracted by their position in 
# the alphabet.
x <- 1:26
letters_subset <- letters[x[x < 6 | x > 21]]

# (f)
# using a logical vector we select the elements of the chem vector of size
# between 3 and 4.
# the length command computes the length of the vector created by the subsetting.
chem_components_in_range <- length(chem[chem > 3 & chem < 4])