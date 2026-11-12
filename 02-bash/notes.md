Scripting with BASH

script files end with .sh. The file must have executable permissions.
#! (shebang) - first line of the script that tells the OS which shell to use. E.g Bash, Zsh, Python.
single line comments: # followed by comment.
Multi-line comments: : ' followed by multi-line comment and end with '.
To run script from anywhere, move the script file to a directory in the path environment variable ($path)

Variables:

Name of variable=contents e.g name='Yusuf'. Then for the script to run the contents of the variable echo $name. Numbers don't need ''.
For a list the variable arrays, it is structured in ("apple", "banana") after the =. To select the different arrays in the list, change the number to the one in the list ${array[0]}. To list the whole array ${array[@]}.
Can use variable in another command string e.g echo "hello, $name".

Parameter:

Information given within the command line to replace the parameter in the scrip when running the script.
echo $1 - to create a parameter, put the replacement for the parameter in the command line to run in the script.
echo $@ - to run all parameters through the script.

Arithmetic Expansion:

$(()) - calculate mathematics sums within the (())
Symbols used for calculating + = add, - = subtract, * = multiply, / = divide.
Can create parameters within the script for value input in the terminal to calculate the result.

if, else , elif, nested if statements:

if [ condition = if something is true ] followed by 'then' in the next row, put the code to run underneath 'then' and finishes with fi in the row below the code.
conditions are formed using comparison operators:
eq - equals
ne - not equal to
lt - less than
gt - grater than
le - less than or equal to
ge - greater than or equal to
To combine conditions && = and, || = or
To compare conditions == - equal to, != - not equal to

else = if the condition is false, provides alternative code to run.
elif = if the first condition if false, checks another condition.

loops & flow control:

while loops execute a block of code as long as the specified condition remains true.
while [ condition ] followed by do, then block of code and end with done.
for loops run the given command in the block of code for every value in the variable. for loops are structured the same as while loops.
break - stops the loop immediately wherever it is placed.
continue - skips the current value in the loop around and continue on to the next one.


functions & Inputs:

name of function() { block of code } - function is a block of code that can be reused whenever needed.
function parameter is information you pass into a function so it can use that information when it runs. $1 refers to the first argument whereas $0 refers to the name of the script being ran. $# tells you how many argument have been passed through the function.
read -p "prompt" Variable - displays the prompt asking the user to enter information and that information will be used in the function as the variable.
return - stops a function when something goes wrong.0 = exit the function with successful statue. 1 = exits with a non-zero status, conventionally indicating failure.
exit - stops the entire script. The numeric value after exit id the same as return.


Piping:

| - pass the output of one command as an input into another command.


Error Handling & Exit Codes:

$? - Checks exit codes to see if the script/command was successful or unsuccessful. 0 = successful, if the number isn't 0, it means unsuccessful or condition wasn't met.
set -e - Places at the start of the script. Stop executing the script at the point of where the error has occurred and has a non-zero exit code.
set -u - Stops the script if a variable hasn't been defined.
set -x - Shows each command as you run the script. Can be used to debug sections of a script and can use set +x to no longer each command shown for the rest of the script.
set -eux - Combine all attributes of -e, -u & -x in to one.
set -o nounset - Equivalent as set -u
set -o errexit - equivalent as set -e
set -o pipefail - Returns and exit status of the last command in the pipeline that returns a non-zero exit code.

Environment & PATH:

To add a directory to the shells PATH permanently to run executable scrips from any directory, echo "export PATH=$path:~/name of directory" >> ~/.zshrc. This writes a line at the end of the zsh configuration file where it adds the directory in your PATH
Can assign an environment variable to a variable within a script for ease of use and readable scrips.

Working with files:

To read files, create a function, within the body of the function add a parameter $1 followed by a while loop IFS= read -r line; then you need to echo "$line". When done <"$name of parameter".
To write files, create a function, within the body of the function add 2 parameters $1 (file path) & $2 (data). Then echo the data parameter to the file path with >> and close the function.
md5sum - to get a basic checksum of a file to get the files integrity.
sha256sum - same as md5sum but 64 hexadecimals instead of 32, more secure and checks security verification.
can create a script to compare checksums checking if they match and file integrity is still in tact.