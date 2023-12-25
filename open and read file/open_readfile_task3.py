def line_counter(file_name):
    with open(file_name) as fp:
        count = 0
        for line in fp:
            count += 1
    return f"\n\n{count}\n"

def lister(file_name):
    with open(file_name) as fs:
        file_1 = []
        for line in fs:
            # b = line.strip("\n")
            file_1.append(line)
    return file_1

with open('comlicte_text', 'w') as fq:
        fq.writelines(lister("2.txt"))
        fq.write(line_counter("2.txt"))
        fq.writelines(lister("1.txt"))
        fq.write(line_counter("1.txt"))
        fq.writelines(lister("3.txt"))
        fq.write(line_counter("3.txt"))

