*** Variables ***

${a}=       50
${b}=       Hello World
@{c}=       10      20      Hello       Hi
&{d}=       1=10        2=20        3=Three     Four=4


*** Test Cases ***
Testing variable types

    Log     ${a}
    Log     ${b}
    Log     @{c}[0]
    Log     @{c}[1]
    Log     &{d}[Four]
    Log     ${c}

