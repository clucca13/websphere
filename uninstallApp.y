import sys
import time
appname = sys.argv[0]
print "App Name = " + appname
appId = AdminConfig.getid("/Deployment:" + appname + "/")
if len(appId) > 0:
        print "Uninstalling " + appname
        AdminApp.uninstall(appname)
        AdminConfig.save()
