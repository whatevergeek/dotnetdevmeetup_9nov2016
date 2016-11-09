#01 - Turn on the light
import requests
url = "http://<replace with NodeMCU IP Address>/cmd?led=1"
requests.get(url)

#02 - Turn off the light
import requests
url = "http://<replace with NodeMCU IP Address>/cmd?led=0"
requests.get(url)

#03 - Blinky
import requests, time
while True:
    requests.get("http://<replace with NodeMCU IP Address>/cmd?led=1")
    time.sleep(0.5)
    requests.get("http://<replace with NodeMCU IP Address>/cmd?led=0")
    time.sleep(0.5)

