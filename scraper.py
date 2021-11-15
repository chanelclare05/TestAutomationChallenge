
# to run : "python3 hello.py"

# msg = 'Hello World'
# msg = msg.capitalize
# print(msg)

import requests
from bs4 import BeautifulSoup
from operator import itemgetter
 
def main():
    url = 'https://godsunchained.com/'
    reqs = requests.get(url)
    soup = BeautifulSoup(reqs.content, features="html.parser")
    dictionary = {}

    for tag in soup.find_all(True, recursive=True):
        if tag.name in dictionary:
            dictionary[tag.name] += 1
        else:
            dictionary[tag.name] = 1


    dictionary_sorted = sorted(dictionary.items(), key=itemgetter(1))
    dictionary_sorted.reverse()
    for k,v in dictionary_sorted:
        print ("{} -> {}".format(k,v))
 
main()
