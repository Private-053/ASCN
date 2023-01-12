import requests
import re
import random
import string

def get_random_string(length):
    # choose from all lowercase letter
    letters = string.ascii_lowercase
    result_str = ''.join(random.choice(letters) for i in range(length))
    return result_str

base = 'https://mailtrap.io'

url = 'https://mailtrap.io/api/accounts/1365881/inboxes/1910943/messages'
headers = {'Api-Token': '$MAILTRAP_KEY'}

r = requests.get(url, headers=headers)
content = r.json()[:3]



for i in range(3):
    id = content[i]['id']
    subject = content[i]['subject']
    to_email = content[i]['to_email']

    message_url = url + '/' + str(id) 

    text = requests.get(message_url + '/body.txt', headers=headers)

    link = re.search(r"http(.*)\]\n",str(text.text)).group()[:-1]
    output = "Subject: " + subject + "|"
    output += "To: " + to_email + "|"
    output += "Signup Link: " + link + "|"

    password = get_random_string(10)
    output += "Password: " + password + "|"
    name = "teste"+ str(i)
    output += "Name: " + name + "|"

    myobj = {'invitation': [{'name': name, 'email': to_email, 'password': password, 'token': link.split("/")[-2] }]}
    res = requests.post("http://"+"$GHOST_IP"+"/ghost/api/admin/authentication/invitation/", json = myobj)

    output += str(res.status_code) + "|"

print(output)

