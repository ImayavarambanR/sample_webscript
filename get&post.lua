if(request.method=="POST")
	then
	local req=json.parse(request.body)
	local nname=req["name"]
	local pprice=req["price"]
	count=storage.count or 0
	storage.count=count+1
	namemod="item"..tostring(count)
	a={name=nname,price=pprice,id=count}
	--a.name=name
	--a.price=price
	--a.id=count
	storage[namemod]=json.stringify(a)
	return 200,a,{["Content-Type"]="application/json"}
end
--response={}
--response.code=0
--response.msg="Success"
if request.method=="GET"
	then
	item={}
	for i=1,storage.count do
		item[i]=storage["item"..i]
		--item[i]=iden
	end
		--[[rname="item"..i
		refer={}
		refer["id"]=storage[rname]["id"]
		refer["name"]=storage[rname]["name"]
		refer["price"]=storage[rname]["price"]
		sample[i]=refer]]--
	response={code=0,msg="Success",items=item}
	--response.items=item
	return 200,response
end
