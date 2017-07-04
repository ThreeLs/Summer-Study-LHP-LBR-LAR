import urllib


#网址
page = 1
url = 'http://www.qiushibaike.com/hot.page/' + str(page)

try:
    request = urllib.request.Request(url)  #请求
    response = urllib.request.urlopen(request)  #回应
    print(response.read())
except urllib.request.URLError, e:
    if hasattr(e, "code"):
        print(e.code)
    if hasattr(e, "reason"):
        print(e.reason)