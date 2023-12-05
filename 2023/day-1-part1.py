total_sum = 0

with open("2023/data/day-1-1.txt", "r") as file:
    for line in file:
        filtered_digits = [c for c in line if c.isdigit()]
        first_digit = filtered_digits[0]
        last_digit = filtered_digits[-1]
        concat_digits = int(first_digit + last_digit)
        total_sum += concat_digits

print(total_sum)

file.close()