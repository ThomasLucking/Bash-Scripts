fruit="apple"

case $fruit in
    "apple")
        echo "This is a red fruit."
        ;;
    "banana")
        echo "This is a yellow fruit."
        ;;
    "orange")
        echo "This is an orange fruit."
        ;;
    *)
        echo "Unknown fruit."
        ;;
esac

# this is similiar to if statements but it's switch cases for example right now the fruit is apple so it will print
# red fruit to the consol. the *) basically is an else statement 


#In Bash, if statements are best for evaluating complex conditions involving comparisons, logical operators, or file tests, giving you flexibility to handle a wide range of scenarios. In contrast, case statements (Bash’s version of switch cases) are designed for cleaner, more readable matching of a single value against multiple fixed patterns, such as menu options or specific keywords. While if is more powerful for intricate logic, case excels in simplicity and clarity when branching based on discrete, predictable inputs.

