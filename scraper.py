# to run : "python3 hello.py"

# 1. Find all tags
# 2. Filter through duplicates only
# 3. List in alphabetical order

# Write a script that filters elements from the DOM with duplicated tags from the https://godsunchained.com/ page and then prints them in alphabetical order.


import requests
from bs4 import BeautifulSoup
from operator import itemgetter
 
def main():
    url = 'https://godsunchained.com/'
    reqs = requests.get(url)
    soup = BeautifulSoup(reqs.content, "lxml")
    dictionary = {}

    # for tag in soup.body.find_all(True, recursive=True):
    for tag in soup.find_all(True):
        if tag.name in dictionary:
            dictionary[tag.name] += 1
        else:
            dictionary[tag.name] = 1

    #Sort by alphabetical 
    dictionary_sorted = sorted(dictionary.items())
    for k,v in dictionary_sorted:
        print ("{} -> {}".format(k,v))
 
main()
