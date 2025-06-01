# Bash Comparison Operators Cheat Sheet

---

### Numeric Comparisons (inside `[ ... ]` or `test`)

| Operator  | Meaning                  | Example (`[ 5 -lt 10 ]`)            |
|-----------|--------------------------|-------------------------------------|
| `-eq`     | Equal to                 | `[ 5 -eq 5 ]` → true                |
| `-ne`     | Not equal to             | `[ 5 -ne 3 ]` → true                |
| `-lt`     | Less than                | `[ 5 -lt 10 ]` → true               |
| `-le`     | Less than or equal to    | `[ 5 -le 10 ]` → true               |
| `-gt`     | Greater than             | `[ 10 -gt 5 ]` → true               |
| `-ge`     | Greater than or equal to | `[ 10 -ge 10 ]` → true              |

✅ **Important:** Only works with integers (no decimals). Needs spaces between brackets and operators.

---

### String Comparisons (inside `[ ... ]`)

| Operator  | Meaning                            | Example                                  |
|-----------|-----------------------------------|-----------------------------------------|
| `=`       | Strings are equal                 | `[ "$a" = "$b" ]`                       |
| `!=`      | Strings are not equal             | `[ "$a" != "$b" ]`                      |
| `<`       | String a sorts before string b    | `[ "$a" \< "$b" ]` (note escaped `<`)   |
| `>`       | String a sorts after string b     | `[ "$a" \> "$b" ]` (note escaped `>`)   |
| `-z`      | String is empty                  | `[ -z "$a" ]`                           |
| `-n`      | String is not empty              | `[ -n "$a" ]`                           |

✅ **Tip:** Always quote variables to avoid issues.

---

### Arithmetic Conditions (inside `(( ... ))`)

| Operator  | Meaning                      | Example                  |
|-----------|-----------------------------|--------------------------|
| `==`      | Equal to                    | `(( a == b ))`           |
| `!=`      | Not equal to                | `(( a != b ))`           |
| `<`       | Less than                   | `(( a < b ))`            |
| `<=`      | Less than or equal to       | `(( a <= b ))`           |
| `>`       | Greater than                | `(( a > b ))`            |
| `>=`      | Greater than or equal to    | `(( a >= b ))`           |

✅ **Note:** No need for `$` before variables inside `(( ))`.

---

### File Tests (inside `[ ... ]`)

| Test        | Meaning                                     |
|-------------|--------------------------------------------|
| `-e file`   | File exists                                 |
| `-f file`   | File exists and is a regular file           |
| `-d dir`    | Directory exists                            |
| `-s file`   | File is not empty                          |
| `-r file`   | File is readable                           |
| `-w file`   | File is writable                           |
| `-x file`   | File is executable                         |

✅ **Example:**
```bash
if [ -f "myfile.txt" ]; then
    echo "File exists"
fi
```

---

### Combined Script Example

```bash
#!/bin/bash

a=5
b=10

if [ $a -lt $b ]; then
    echo "$a is less than $b"
fi

if (( a + b == 15 )); then
    echo "Sum is 15"
fi

file="myfile.txt"
if [ -f "$file" ]; then
    echo "$file exists"
else
    echo "$file does not exist"
fi
```

---

✅ **Save this file as `bash_comparisons_cheatsheet.md` and add it to your `cheat-sheets` folder for quick reference.**
