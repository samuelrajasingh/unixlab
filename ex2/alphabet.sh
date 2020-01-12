read -p "Enter a character: " char
if [[ "$char" == *[AEIOUaeiou]* ]]; then
    echo "Vowel"
else
    echo "Consonant"
fi
