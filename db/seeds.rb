Advisor.create!([
  {name: "Samantha Bills", company: "Money Tower", phone: "9876543456", email: "sam@tower", password_digest: "$2a$10$ff33Aebim1kD6A4egErfF.ef86OVrnfpGXpC1Gr2pthBtvq8Sag2W", logo: ""},
  {name: "Karen Capital", company: "Capitalization Station", phone: "23456789", email: "Karen@lot", password_digest: "$2a$10$Vwka4E0xbx6pubw/KBZ9H.0YEwf6FMzOEmmXWy329MD8tcdXULlvy", logo: ""},
  {name: "Jessica Alba", company: "HoneyPot", phone: "66666666", email: "honey@sin", password_digest: "$2a$10$uwk7CyMIqgeDg6UCpYP/gOeTq4LvFHPuiCPlRb5vYEDo5GAcF/eeG", logo: ""},
  {name: "Jamie Andrew Mackillop", company: "JAMStars", phone: "567898765", email: "j@m", password_digest: "$2a$10$Mc7F5hcPG9cI32ZVVJV2NOBU/NetHmFn28NQT1Ic3uqT5ijW6bhFu", logo: ""},
  {name: "mac ian mac", company: "firstassent", phone: "0897867564", email: "mac@mac", password_digest: "$2a$10$oPWAFhp7Kn9hVwUh0/9zD.OCpPSsNXPmXgqexSebJhw9wDBVhTh6G", logo: ""},
  {name: "cvzvcx", company: "cxzvcxvcxvvxcz", phone: "1233443", email: "random@random", password_digest: "$2a$10$s7h7zvEhy6JNL3tyG03PUeAphG4Ue6ycdisGGo1oRiOQHisypHq4a", logo: ""},
  {name: "Judith Mas", company: "Cut your head off", phone: "4567890", email: "judge@judy", password_digest: "$2a$10$Wxax7S0UE7vJ1O.ypT0bs.wC12Nl5CQ0Or9IfVoqjk9RYAXH7KFay", logo: ""}
])
Client.create!([
  {name: "Martha Tetas", email: "marth@tet", phone: "89767564", risk_tolerance: 2, password_digest: "$2a$10$CwPFwAD3T1ib.q7E9sbDoeouQTE7IeuFcr9JW4xcBDx0axo1nvilG"},
  {name: "Tina Turner", email: "tina@time", phone: "86756798", risk_tolerance: 1, password_digest: "$2a$10$7QYQob/wgHfCei5gi.SVquWUIZe27xiL/QCxcicBYF7EAvh3p4/W6"},
  {name: "Chrissy Casey", email: "chris@case", phone: "08978654", risk_tolerance: 3, password_digest: "$2a$10$sFU8A55BdKuGthPQSNpnmuu4KPPGxhE8FunstNm9elkhiOnSf3c.2"},
  {name: "hotty potty", email: "hot@pot", phone: "78654678", risk_tolerance: 3, password_digest: "$2a$10$VnHTqlN1adINSXEff0j2xeuWrHcu5KA9g0VE6hYt1hKMR3sVRDwWa"}
])
Invitation.create!([
  {expiration: nil, advisor_id: 1, client_id: 4, status: "Pending"},
  {expiration: nil, advisor_id: 1, client_id: 3, status: "Pending"},
  {expiration: nil, advisor_id: 2, client_id: 3, status: "Pending"}
])
Proposal.create!([
  {risk_model_id: 1, client_id: 5, advisor_id: 5, invitation_id: 1, status: "does this work?!?!"},
  {risk_model_id: 2, client_id: 6, advisor_id: 6, invitation_id: 1, status: "duh duh duh"},
  {risk_model_id: 4, client_id: 7, advisor_id: 7, invitation_id: 3, status: "Pendddddingg please"}
])
RiskModel.create!([
  {name: "Medium Risk", risk_level: 2, description: "This model accepts moderate risk", allocations: "60% bonds, 40% stocks", companies: nil, etfs: nil},
  {name: "Medium-High Risk", risk_level: 3, description: "This model is risky", allocations: "40% bonds, 60% stocks", companies: nil, etfs: nil},
  {name: "High Risk", risk_level: 4, description: "This model is very risky---only for long term", allocations: "20% bonds, 80% stocks", companies: nil, etfs: nil},
  {name: "Low Risk", risk_level: 1, description: "This the lowest possible risk", allocations: "80% bonds, 20% stocks", companies: "", etfs: ""}
])
