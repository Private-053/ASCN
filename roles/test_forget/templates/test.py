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
content = r.json()[0]


output = ""


id = content['id']
subject = content['subject']
to_email = content['to_email']

message_url = url + '/' + str(id) 

text = requests.get(message_url + '/body.txt', headers=headers)

link = re.search("http:.*\n",str(text.text)).group()

output += "Subject: " + subject + "|"
output += "To: " + to_email + "|"
output += "Signup Link: " + link + "|"

password = get_random_string(10)
output += "Password: " + password + "|"

myobj = {'password_reset': [{'newPassword': password, 'ne2Password': password,'token': link.split("/")[-2] }]}

res = requests.put("http://"+"$GHOST_IP"+"/ghost/api/admin/authentication/password_reset/", json = myobj)

output += "Response: " + str(res.json())


print(output)