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


Tie's KISS checklist:

    * always returns a string!
    * remove all **NONE**
    * unless */allow-none-as* refinement is used
    * and tie together with no spaces unless */with* refinement given


Examples:

    TBD


Disclaimer:

    So not **rejoin** or **combine** but **to-string**++ :)

    *see %tie.reb header for more details*
