# README
*****This is still in Development!!!*****
EthiCapital connects financial advisors to existing or prospective clients based on Environmental, Social, and Governance Investments (ESG). This app accomplishes 3 main goals: 1) Clients can search for financial advisors based on location, area of focus (i.e. renewable energy, animal rights, human rights...), or both location and area of focus.
***Please note*** The location search is based on the Google Maps API. Add your own API key to use this function (https://developers.google.com/maps/documentation/javascript/get-api-key)
2) Clients can fill out a risk tolerance questionnaire and EthiCapital will build a proposal with a risk model based on their risk capacity. There are 5 models ranging from very little risk (80% bonds, 20% stocks) to very high risk (100% stocks). 
3) These proposals are saved on both client and advisor sides. Clients can download a pdf of the proposal, sign it, and upload the signed version (serving as a signed contract). 
, allows financial advisors to upload personalized proposals, and creates a signed agreement between the two parties. 
*****This is still in Development!!!*****


INSTALLATION:
1) Clone this application into a directory (using git clone)
2) bundle the gems
3) rails db:seed
 - this will allow you to have some examples of advisors, clients, and the risk models
 - ***Note*** The password for all clients and advisors is:    jamie
4) rails s
  - to view on http://localhost:3000


* Ruby version: This was built on Rails 5.0.2