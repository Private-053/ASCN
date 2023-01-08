import requests
import re

base = 'https://mailtrap.io'

url = 'https://mailtrap.io/api/accounts/1365881/inboxes/1910943/messages'
headers = {'Api-Token': '$MAILTRAP_KEY'}

r = requests.get(url, headers=headers)
content = r.json()[0]

id = content['id']
subject = content['subject']
to_email = content['to_email']

message_url = url + '/' + str(id) 

text = requests.get(message_url + '/body.txt', headers=headers)
# email errado
if(text.status_code != 200):
    content = r.json()[1]
    id = content['id']
    subject = content['subject']
    to_email = content['to_email']
    message_url = url + '/' + str(id)
    text = requests.get(message_url + '/body.txt', headers=headers)

link = re.search(r"http(.*)\n",str(text.text)).group()
output = "Subject: " + subject + "|"
output += "To: " + to_email + "|"
output += "Signup Link: " + link + "|"


# verificar conta
r = requests.get(link)
if(r.status_code == 200):
    output += "Account verified!"
else:
    output += "Account not verified!"

print(output)



