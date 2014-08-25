def get_max_line_length(string):
    lines = string.splitlines()
    if not lines:
        return 0
    return max(len(line) for line in lines)
