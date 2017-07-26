import requests


if __name__ == "__main__":
    headers ={'cache-control':'no-cache','content-type':'application/json','postman-token':'','zopim-account-id':'8'}
    url_scribe = "https://scribe.chat.pando.zdch.at"
    endpoint="/roles"
    url_request = url_scribe + endpoint
    #auth=('user','pass')
    #user = 
    #pass = dd
    print "this is main function"
    r = requests.get(url_request,headers=headers)
    print r.json()
    print "end"
