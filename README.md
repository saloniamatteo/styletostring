# styletostring

![gif preview][preview]

This is a little script I made in bash that helps you add any style you like
to a string. It's currently the first stable working version, so I'll just
publish it for now. NOTE: this bash script DOES NOT have any dependencies. It currently has been tested on Termux (Android 9, no root) and Ubuntu 18.04, and they both work. If you find a bug, please create a new [issue over here](https://github.com/GoDzM4TT3O/styletostring/issues).

If you want to add another modifier to your string, please check [manually adding color codes](https://github.com/GoDzM4TT3O/styletostring/blob/master/README.md#manually-adding-color-codes)

Any contribution will be appreciated!

## Color codes
To find more color codes, please use this table:

| Text Format        | Text Color         | Background Color   |
|--------------------|--------------------|--------------------|
| 0: normal text     | 30: black          | 40: black          |
| 1: bold text       | 31: red            | 41: red            |
| 2: darker text     | 32: green          | 42: green          |
| 3: italic text     | 33: yellow         | 43: yellow         |
| 4: underlined text | 34: blue           | 44: blue           |
|                    | 35: purple/magenta | 45: purple/magenta |
|                    | 36: cyan           | 46: cyan           |
|                    | 37: white          | 47: white          |

(You can see vaniacer's table containing more color codes: https://github.com/vaniacer/bash_color/blob/master/color)

## Manually adding color codes:
The command was 'printf \e[44mtest':
- \e[ means that we're starting a color code
- 44 is a code that means that we're adding a blue background to the string
- m means the color code is over
- test is our string

to display all of the above correctly in a terminal without borking it, 
we're going to add newlines and resetting the color at the end of the string:



BEFORE: \e[44mtest

AFTER: \n\e[44mtest\n\n\e[0;37m
(\n is a newline)



If I want to make it underlined, I'm going to add the '4' code before 44: \n\e[**4**;44mtest\n\n\e[0;37m


If I want to make it bold, I'm going to add the '1' code before '4': \n\e[**1**;4;44mtest\n\n\e[0;37m

[preview]: https://raw.githubusercontent.com/GoDzM4TT3O/styletostring/master/preview.gif
