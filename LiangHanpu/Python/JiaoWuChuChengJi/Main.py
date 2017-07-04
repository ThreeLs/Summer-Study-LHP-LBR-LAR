# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import urllib
import urllib2
import cookielib
import re

class CUMT:
    
    def __init__(self):
        self.loginUrl = 'http://202.119.206.62/xtgl/login_login.html'
        self.gradeUrl = 'http://202.119.206.62/cjcx/cjcx_cxDgXscj.html'
        self.cookies = cookielib.CookieJar()
        self.postdata = urllib.urlencode({
                'yhm':'10154236',
                'mm':'18103X'
                })
        self.opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(self.cookies))
    
    def getPage(self):
        request = urllib2.Request(
                url = self.loginUrl,
                data = self.postdata)
        result = self.opener.open(request)
        #result = self.opener.open(self.gradeUrl)
        
        print result.read()

cumt = CUMT()
cumt.getPage()