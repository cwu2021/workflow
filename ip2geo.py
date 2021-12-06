# https://stackoverflow.com/questions/24678308/how-to-find-location-with-ip-address-in-python

import requests
response = requests.get("https://geolocation-db.com/json/39.110.142.79&position=true").json()
print(response)
