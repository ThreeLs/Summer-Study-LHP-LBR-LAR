# -*- coding: utf-8 -*-
"""
Created on Tue Jul 04 16:58:24 2017

@author: vento
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
        self.postdata1 = urllib.urlencode({
                'yhm':'10154236',
                'mm':'18103X'
                })
        self.postdata2 = urllib.urlencode({
                'gnmkdm':'N305005',
                'dyym':'/cjcx/cjcx_cxDgXscj.html',
                'gnmkmc':'%E5%AD%A6%E7%94%9F%E6%88%90%E7%BB%A9%E6%9F%A5%E8%AF%A2',
                'sfgnym':'1',
                'layout':'func-layout',
                'gnmkdmKey':'index',
                'sessionUserKey':'10154236'
                })
        self.opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(self.cookies))
    
    def getPage(self):
        request1 = urllib2.Request(
                url = self.loginUrl,
                data = self.postdata1)
        result = self.opener.open(request1)
        request2 = urllib2.Request(
                url = self.gradeUrl,
                data = self.postdata2)
        result1 = self.opener.open(request2)
        
        print result1.read()

cumt = CUMT()
cumt.getPage()