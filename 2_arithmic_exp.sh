number1=10
number2=20

echo " SUM: $ (( number1 + number2 ))"
echo " PRODUCT: $ (( number1 * number2 ))"
echo " DIVISION: $ (( number1 / number2 ))"
echo " REMINDER: $ (( 10 % 3 ))"
echo " POWER: $ (( 3**2 ))"

echo "_________________________"
echo "INCREASE A VARIABLE"

echo "variable is $number1"
echo " $(( number1-- ))"
echo " Value of number1 is ${number1} ))"

echo "BEFORE INCREASING VARIABLE BY 1 - $number1"
echo " $(( ++number1 )) "
echo " Value of number1 is ${number1} ))"

echo "_________________________"
echo "SHORT WAT OF OPERATING ON A VARIABLE"

number1=10
number1=$((number1+3))

echo "value = $number1"
echo "ADD: $((number1+=3))"
echo "$number1"

echo "SUBTRACT: $((number1-=10))"
echo "$number1"

echo "MULTIPLY: $((number1 *=10))"