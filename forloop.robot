*** Variables ***

@{a}    ten     one     30      400
&{g}    k=1     l=2     m=3     n=4

*** Test Cases ***

For Loop
    :FOR        ${i}    IN RANGE    10  20  +3
    \       Log     ${i}
    \       Log     ${i-5}
    \       ${k}     Evaluate        ${i} % 5
    \       Log     ${k}

For First Loop

    :FOR        ${i}        in      @{a}
    \       Log     ${i}

For dictionary value

    :FOR    ${i}    IN  @{g.keys()}

    \       Log     key is ${i} and correspondoing value is &{g}[${i}]  console=true

#Yaml/Python Values
 #   Log     ${b}
  #  Log     &{c}[d]
   # Log     &{c}[e]