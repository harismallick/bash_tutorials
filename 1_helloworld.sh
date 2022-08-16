#! /bin/bash

# echo "hello world" > test_file.txt
# One '>' is like 'w' in Python.
# Two '>>' is like 'a' in Python.

# cat >> test_file.txt

# Multiline commenting:
# Commented lines of text are not displayed in the terminal when the script is executed.

: '
What if you had many lines
that you were using to convey to the users
what the downstream lines of code are meant to do
rather than commenting each line of text individually,
you can use multi-line commenting, which works very similar to Python.
You can place all the text within quotes that are followed by a colon.
This is the python equivalent of using """ text """
'
cat << delimiter
This is a heredoc test.
Heredoc allows for text to be output in the terminal.
delimiter
