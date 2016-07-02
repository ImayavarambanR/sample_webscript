local url=request.query.url
return 302,{},{["location"]=url}
