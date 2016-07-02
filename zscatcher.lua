--local zsjson=json.parse(request.query.payload)
--local id=zsjson.data.subscription.customer_id
local sjson=json.parse(request.body)
local cid=sjson.customer_id
local u="https://subscriptions.zoho.com/api/v1/customers/"..cid
local response = http.request {
	url = u,
	headers = {
		Authorization="Zoho-authtoken 7534be18644ba42f5195f6171e4c8026"
		}
}
return json.parse(response.content).customer.twitter
