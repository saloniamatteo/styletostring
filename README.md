# styletostring
This is a little script I made in bash that helps you add any style you like
to a string. It's currently the first stable working version, so I'll just
publish it for now.
Because of this, if you want to add another modifier to your string,
I recommend adding it manually; for example: I have a string with a blue background
('\e[44mtest') and I want to make it bold, in that case I will add the number 1.
The result will be '\e[1;44mtest'.

Any contribution will be appreciated!

## Resources
To find more modifiers, please use this table:

#-------------------------+--------------------------------+
\# Text Format      |  Text color        | Background color |     
#-----------+-------------+--------------+-----------------+
0: normal text     | 30: black          | 40: black        |
1: bold text       | 31: red            | 41: red          |
2: darker text     | 32: green          | 42: green        |
3: italic text     | 33: yellow         | 43: yellow       |
4: underlined text | 34: blue           | 44: blue         |
                   | 35: purple         | 45: purple       |
                   | 36: cyan           | 46: cyan         |
                   | 37: white          | 47: white        |
#----------------------------------------------------------+

You can also see vaniacer's table containing more color codes: https://github.com/vaniacer/bash_color/blob/master/color
