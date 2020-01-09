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
You can see vaniacer's table containing more color codes: https://github.com/vaniacer/bash_color/blob/master/color
