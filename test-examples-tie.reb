Rebol [
    title: "Simple example tests for %tie.reb module"
    needs: [tie]
]

examples: [

    "hello world!" == tie ["hel" "lo" if true [" "] "world" if false ["BLAH!"] "!"]

    "1,2,3,4,5" == tie/with [1 2 3 4 5] "," 

    "1203405" == tie/allow-none-as [1 2 none 3 4 if false [99] 5] "0"

    ; testing all refinements
    "1.2.0.3.4.0.5" == tie/allow-none-as/with [1 2 none 3 4 if false [99] 5] "0" "."

    ; test for funnies
    "" == tie a: copy b: [none none none]
    "" == tie/with a "\/"
    "\/\/\/" == tie/allow-none-as a "\/"
    "\/.\/.\/" == tie/with/allow-none-as a "." "\/"

    ; including test doesn't modify series
    strict-equal? a b
]

run-tests: function [eg] [
    tests: reduce eg
    remove-each n passed: copy tests [n == false]

    print either (t: length? tests) = (p: length? passed) 
        ["SUCCESS - all tests passed"]
        ["FAILURE - test(s) failed"]

    print [p "out of" t "tests passed"]
]

run-tests examples
