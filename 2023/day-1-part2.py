import re
total_sum = 0

EXTENSION_NUMBERS_PATTERN = r"\d|one|two|three|four|five|six|seven|eight|nine"


written_digits_dict = {'one': '1',
                       'two': '2',
                       'three': '3',
                       'four': '4',
                       'five': '5',
                       'six': '6',
                       'seven': '7',
                       'eight': '8',
                       'nine': '9'
}

# open file in 'r' mode (read mode)
with open("data/day-1-part2.txt", "r") as file:
    for line in file:
        raw_digits = []
        found_digit = re.search(EXTENSION_NUMBERS_PATTERN, line)
        while found_digit:
            raw_digits.append(found_digit.group())
            next_index = found_digit.start() + 1
            line = line[next_index:]
            found_digit = re.search(EXTENSION_NUMBERS_PATTERN, line)
        
        digits = [written_digits_dict[digit] if digit in written_digits_dict else digit for digit in raw_digits]

        first_digit = digits[0]
        last_digit = digits[-1]
        concat_digits = int(first_digit + last_digit)

        total_sum += concat_digits

print(total_sum)
