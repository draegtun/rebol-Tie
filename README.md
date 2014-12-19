Tie a string! from a block!
===========================

Simplest version of **combine** I could imagine!!

    >> import 'tie
    >> help tie
    
    USAGE:
        TIE block /with knot /allow-none-as surrogate
    
    DESCRIPTION:
        Tie block of values together into one long string!
        TIE is a function value.
    
    ARGUMENTS:
        block -- Values to reduce and tie together (block!)
    
    REFINEMENTS:
        /with -- tie values together with...
            knot (string! char!)

        /allow-none-as -- Don't suppress NONE. Instead replace with...
            surrogate (string! char!)


Tie's KISS checklist
--------------------

* module must be short, sweet, light and nimble :)
* always returns a string!
* remove all **NONE**
* unless */allow-none-as* refinement is used
* and tie together with no spaces unless */with* refinement given
* one level only, ie. no recursion (block and blocks don't go round and round!)


Examples
--------

    >> tie ["hel" "lo" if true [" "] "world" if false ["BLAH!"] "!"] 
    == "hello world!"

    >> tie/with [1 2 3 4 5] ","            
    == "1,2,3,4,5"
    
    >> tie/allow-none-as [1 2 none 3 4 if false [99] 5] "0"
    == "1203405


Disclaimer
----------

So not **rejoin** or **combine** but **to-string**++ :)

*see %tie.reb header for more details*
