from datetime import datetime
from argparse import ArgumentParser

parser = ArgumentParser()
parser.add_argument('-p', '--path', type=str, metavar='PATH', help='The path of which you want to append datetime to')
#parser.add_argument('-n', '--num', type=int, metavar='PATH', help='The number you want to run')

args = parser.parse_args()

print(args.path)
#print(args.num)

filename = args.path

#file1 = open(filename, 'a')
current_time = datetime.now()
formatted_time = current_time.strftime("%Y/%m/%d %H:%M:%S")
print(formatted_time)

with open(filename, 'a') as file1:
    file1.write(f'\n{formatted_time} from a given argument')