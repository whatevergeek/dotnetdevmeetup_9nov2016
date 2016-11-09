import requests
url = "http://api.openweathermap.org/data/2.5/weather?q=Singapore&appid=5f66d45584956aac253431728ba523a4"
r = requests.get(url)
print("Weather in Singapore:  " + r.json()['weather'][0]['description'])

# print(r.json())


#formulahendry.code-runner