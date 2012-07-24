import sys

def process_file(in_file):
    for line in in_file:
        cols = line.strip().split()
        yield [col.split(':')[-1] for col in cols]

if __name__ == '__main__':
    with open(sys.argv[1]) as in_file:
        for line in process_file(in_file):
            print '\t'.join(line)
