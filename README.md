# madlibs

This is really a string concatenation program.

1. First, we have an array, *contentTypes* which holds all possible "stories" and their placeholders for inserted words.
2. In an infinite loop, which is broken only upon the input of any character other than "y" or "Y", a random number is generated, from which the "story" is derived.
3. The user is asked to input words based on the word type, eg, "relative (e.g, father, son, cousin)" or "active action (e.g, running, eating, fighting)"
4. Once all the words in the *words* array have been filled in, the "story" is printed out on screen with all the words in the *words* array filled in.
