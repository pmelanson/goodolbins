Some `bin`s
===========

Some scripts I’ve made that make my life a bit easier.


`brightnessmod`
---------------
Change the brightness, assuming you have `brightness` and `max_brightness` symlinks in your homedir that link to your actual files
that control the brightness of your monitor.

Usage: `brightnessmod n` where n is how much you want to change your brightness by.

`chwall`
--------
Change your current wallpaper, assuming you have `feh` installed and a bunch of
pictures in `~/Pictures/wallpapers/`.

`rmwall`
--------
Deletes the image that your current wallpaper is set to, assuming you used feh
to set it (which `chwall` does, by coincidence). Essentially, deletes the file
referenced in `~/.fehbg`.

`runSuite`
----------
My test harness. This is fun. Checks if giving a program a certain input
gives a certain output, and prints whether this is not the case.

Usage: `runSuite suite-file program`.

The way this works is you have a pair of files, with an optional third file,
with the following naming scheme: `t1.in` `t1.out` `t1.args`, where `t1.args` is
optional. `t1` can be replaced by any valid prefix of a filename (no newlines please).

Then `program` is run with `t1.in` as input, and the standard output is checked
to be exactly `t1.out`’s contents. If `t1.args` exists, they contents are used
as commandline arguments to `program`.
If the output and `t1.out` differ, the input, expected output, actual output, and
a diff are given, in that order.

Then `suite-file` contains a test on each line, where an example test is `t1`.
For example, if `suite-file` has contents:
    t1
    t2
    abc
then `runSuite` will look for each of `t1.in`, `t1.out`, `t2.in`, `t2.out`, `abc.in`, `abc.out`
(and optionally `t1.args`, `t2.args`, `abc.args`). Then `program` will
be tested against all of `t1`, `t2`, and `abc`.

`volumemod`
-----------
Changes volume of the second (not first) PulseAudio sound sink. Useful
when your actual used audio sink is not the first one.

Usage: `volumemod (+|-)n%` where n is how much you want to raise or lower volume by.
