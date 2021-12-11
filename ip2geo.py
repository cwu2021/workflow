# https://stackoverflow.com/questions/24678308/how-to-find-location-with-ip-address-in-python
# https://stackoverflow.com/questions/7696924/is-there-a-way-to-create-multiline-comments-in-python
'''
import requests
response = requests.get("https://geolocation-db.com/json/39.110.142.79&position=true").json()
print(response)
'''
# an easier local lookup is geoiplookup.
'''
https://www.thelinuxfaq.com/360-how-to-install-and-use-geoip-on-fedora-centos-ubuntu
Ubuntu/Debian :
# apt-get install geoip-bin geoip-database
Fedora/CentOS/RHEL:
# yum install GeoIP GeoIP-data
(then copy GeoIP data in /usr/share/GeoIP from latest ubuntu. however, legacy db will retire in 2022.)
'''
# https://www.section.io/engineering-education/how-to-execute-linux-commands-in-python/
import subprocess  
  
def geoip(servers):

    # The command you want to execute   
    cmd = 'geoiplookup'
    outputlist = []
    # Iterate over all ip in the list to do geoiplookup
    for server in servers:
        temp = subprocess.Popen([cmd , server], stdout = subprocess.PIPE) 
        # get the output as a string
        output = str(temp.communicate()) 
    # store the output in the list
        outputlist.append(output)
    return outputlist
  
if __name__ == '__main__': 
    
    # Get the list of servers from the text file
    servers = list(open('iplist.txt'))
    # Iterate over all the servers that we read from the text file
    # and remove all the extra lines. This is just a preprocessing step
    # to make sure there aren't any unnecessary lines.
    for i in range(len(servers)):
        servers[i] = servers[i].strip('\n')
    outputlist = geoip(servers) 
    
    # Uncomment the following lines to print the output of successful servers
    print(outputlist)
