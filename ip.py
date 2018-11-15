#!/usr/bin/env python3

import requests


if __name__ == '__main__':
    try:
        r = requests.get('https://wtfismyip.com/json')
        data = r.json()
    except Exception as exp:
        print("\nCan't connect to the server.\n")
        exit()

    ip = data['YourFuckingIPAddress']
    isp = data['YourFuckingISP']
    location = data['YourFuckingLocation']

    print("\nYour IP Adress is: {ip}".format(ip=ip))
    print("Your ISP is: {isp}".format(isp=isp))
    print("Your Location is: {location}".format(location=location))
