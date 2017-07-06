# Advisor.create!([
#   {name: "Connie Conway", company: "Cailber Capital", phone: "98776545", email: "c@c", password_digest: "$2a$10$ilQbGIUhXzyT6b6UtFyAp.8thvR39gkQT.omUtl6n1W29g6eww3aG", logo: "business_woman.jpg", zip_code: "85001", tags: "Renewable energy, climate change, human rights, employee relations"},
#   {name: "James Johnson", company: "Country Investments", phone: "7976566798", email: "c@i", password_digest: "$2a$10$wlAK4sV2CEvO2HAVTuNSAuORBggmcycHBHPypTmHHkV8pQhZmLA5u", logo: "advisor.jpeg", zip_code: "11203", tags: "sustainability, nuclear energy"},
#   {name: "Dirk Delewar", company: "Stateside Equity", phone: "87655432", email: "d@d", password_digest: "$2a$10$oBGyv4yq0xPb035CrcXRqeQYfoEhDYgA6I2DG9vbCawd90o.pRZ1K", logo: "bearded_business_man.jpg", zip_code: "98101", tags: "Management Structure, consumer protection"},
#   {name: "Henry Harlem", company: "Holistic Investnet", phone: "89865467", email: "h@h", password_digest: "$2a$10$EatxCzzHMxpTlBzcp4OKOukYFa/DdvPDtPeCkVg0gAkLKyXjc7j2K", logo: "advisor.jpeg", zip_code: "82001", tags: "Animal Welfare, diversity."},
#   {name: "Ken Thatchet", company: "Bletchley Radio Tower", phone: "987675689", email: "k@t", password_digest: "$2a$10$YK9hbK28SV4jrBBjWON0Qu32r5skscsyyZ9CFFmdmjMugBsCo9XrC", logo: "advisor.jpeg", zip_code: "11206", tags: "hyrdo-electric energy"},
#   {name: "Kevin Kind", company: "Realestate Advisors", phone: "987675689", email: "k@p", password_digest: "$2a$10$X8bKxRXDnTymspTRGx9H6.qUAlcnef1M/ul6sAZoHCpsntudk2MYa", logo: "advisor.jpeg", zip_code: "80203", tags: "solar energy, wind energy"},
#   {name: "Brian Tecturn", company: "Impact Investor Management", phone: "89765645", email: "b@r", password_digest: "$2a$10$Yg31WCruEfiKCpZ7M6RH6unkuzTKHuLYH9lT05h/v6BeKwuedORO.", logo: "pb_hero.jpg", zip_code: "80203", tags: "climate change, renewable energy, management structure"},
#   {name: "Heidi Holliday", company: "Sunshine Investments", phone: "8976545678", email: "h@h", password_digest: "$2a$10$mwj47LzFdPVj/2do89cKbu7dXTm/UW0dK7LyIx84XrdXWPR5EC.Fq", logo: "money.jpg", zip_code: "80227", tags: "executive compensation, climate change, nuclear energy"},
#   {name: "Julliete Romero", company: "Aphrodyn Management", phone: "986554897", email: "j@r", password_digest: "$2a$10$rx5ZQXw0EExXSTuTkoiBvuu2.p/HeIXcubxkiFCWF0ovZDHXJcKX.", logo: "business_woman.jpg", zip_code: "59003", tags: "Human rights, executive compensation"},
#   {name: "Henry Kiswald", company: "Global Impacts", phone: "08978675", email: "he@he", password_digest: "$2a$10$O9lTOXLzp4ELWzVCm91jjOcSR1ToiCFnV/X37XaCbcs/icf7VG55C", logo: "money.jpg", zip_code: "80206", tags: "employee relations"},
#   {name: "Marlon Brex", company: "Britains Royal Investments", phone: "567987675", email: "mar@b", password_digest: "$2a$10$NqiceMWAQKgKvwsc33lQce..c/.wgnG2pFi2HBBmQiZeTTgdt60vK", logo: "salad.jpg", zip_code: "11203", tags: "animal welfare, animal rights, animal protection"},
#   {name: "Jamie MacKillop", company: "EthiCapital Alliance", phone: "87656", email: "j@m", password_digest: "$2a$10$MpBjEd9pDhUJ7HxZfv7ONO8nuu5SDfcwAKPPEH3riSyzhRQd3YCWG", logo: "pb_hero.jpg", zip_code: "11206", tags: "sustainability hydro-electric executive compensation"}
# ])
# Client.create!([
#   {name: "Kevin Clien", email: "k@c", phone: "76865864", risk_tolerance: nil, password_digest: "$2a$10$GxN3BVlQzR1tjP66vLLtK.kghwooHRDhYqu.0s33WAqJPhR4P07Ee"},
#   {name: "Alice Wong", email: "a@w", phone: "897867", risk_tolerance: nil, password_digest: "$2a$10$DBzV/nzmtxFn7cSXTU9rMOwpQIxAzQmyZYZnZGCNALqkZYDY3RsSC"},
#   {name: "Augustine Constantine", email: "a@c", phone: "456789899", risk_tolerance: nil, password_digest: "$2a$10$P1mrCXWk1fGstuLIrr0hN.dDhNot59Tl62RbHND5WqLdzVWfYA7vy"},
#   {name: "Amy Adams", email: "a@a", phone: "67568900", risk_tolerance: nil, password_digest: "$2a$10$VCu94DSWRNazZ7ypjbXcDupS8u8HSmxYnYCNjlj9wzBOelpHmCkMi"},
#   {name: "Ari Miller", email: "a@r", phone: "787856561", risk_tolerance: nil, password_digest: "$2a$10$uO52TR6Jrn7aYc26FMluxeFfn7SPFEhJiCo9GpBsg2p7pKkNYuCWi"},
#   {name: "Judas Lazarrus", email: "judas@j", phone: "8976756", risk_tolerance: nil, password_digest: "$2a$10$Yj2GEVyS8jxuCPsOlKenTe5WniP5QqW3eO8ZkQg.RviyofGeDOyma"},
#   {name: "Dov Deman", email: "d@tm", phone: "83408945", risk_tolerance: nil, password_digest: "$2a$10$0eBhwCAAQQBMaBOiy6dIb.ILg3ozo4fLoGO46SatkLwW09WcvXnVS"},
#   {name: "Judth Masoni", email: "j@j", phone: "9786758", risk_tolerance: nil, password_digest: "$2a$10$giimAW2cfKHJW1Bwn4uM8uFX5fsVXZqvNvtEu9FemJRM8e0HICEVe"},
#   {name: "Mac Andrews", email: "m@m", phone: "456789", risk_tolerance: nil, password_digest: "$2a$10$Tgxlga6Fl633L8egj5Bf3e5lYvKfhtvXVldPPBHvwANWwak5udNQ6"}
# ])
# Invitation.create!([
#   {expiration: nil, advisor_id: 19, client_id: 15, status: "accepted"},
#   {expiration: nil, advisor_id: 22, client_id: 15, status: "accepted"},
#   {expiration: nil, advisor_id: 19, client_id: 17, status: "accepted"},
#   {expiration: nil, advisor_id: 21, client_id: 17, status: "accepted"},
#   {expiration: nil, advisor_id: 22, client_id: 17, status: "accepted"},
#   {expiration: nil, advisor_id: 19, client_id: 16, status: "accepted"},
#   {expiration: nil, advisor_id: 29, client_id: 18, status: "accepted"},
#   {expiration: nil, advisor_id: 32, client_id: 20, status: "accepted"},
#   {expiration: nil, advisor_id: 19, client_id: 22, status: "pending"},
#   {expiration: nil, advisor_id: 33, client_id: 22, status: "accepted"},
#   {expiration: nil, advisor_id: 27, client_id: 24, status: "accepted"},
#   {expiration: nil, advisor_id: 34, client_id: 17, status: "accepted"}
# ])
# Proposal.create!([
#   {risk_model_id: 1, client_id: 17, advisor_id: 19, status: "signed", pdf: "ethicapital_proposal.pdf", questionnaire_id: nil},
#   {risk_model_id: 2, client_id: 16, advisor_id: 19, status: "signed", pdf: "Vanguard_-_Investor_Questionnaire.pdf", questionnaire_id: nil},
#   {risk_model_id: 3, client_id: 17, advisor_id: 21, status: "signed", pdf: "ethicapital_proposal.pdf", questionnaire_id: nil},
#   {risk_model_id: 3, client_id: 17, advisor_id: 22, status: "signed", pdf: "Vanguard_-_Investor_Questionnaire.pdf", questionnaire_id: nil},
#   {risk_model_id: 1, client_id: 15, advisor_id: 19, status: "pending", pdf: nil, questionnaire_id: nil},
#   {risk_model_id: 1, client_id: 17, advisor_id: 21, status: "pending", pdf: nil, questionnaire_id: nil},
#   {risk_model_id: 2, client_id: 17, advisor_id: 19, status: "pending", pdf: nil, questionnaire_id: nil},
#   {risk_model_id: 2, client_id: 17, advisor_id: 21, status: "pending", pdf: nil, questionnaire_id: nil},
#   {risk_model_id: 4, client_id: 17, advisor_id: 22, status: "pending", pdf: nil, questionnaire_id: 36},
#   {risk_model_id: 5, client_id: 18, advisor_id: 29, status: "pending", pdf: nil, questionnaire_id: 37},
#   {risk_model_id: 1, client_id: 18, advisor_id: 29, status: "pending", pdf: nil, questionnaire_id: 38},
#   {risk_model_id: 2, client_id: 17, advisor_id: 21, status: "signed", pdf: "ethicapital_proposal.pdf", questionnaire_id: 39},
#   {risk_model_id: 1, client_id: 20, advisor_id: 32, status: "pending", pdf: nil, questionnaire_id: 40},
#   {risk_model_id: 1, client_id: 22, advisor_id: 19, status: "pending", pdf: nil, questionnaire_id: 41},
#   {risk_model_id: 1, client_id: 17, advisor_id: 19, status: "pending", pdf: nil, questionnaire_id: 42},
#   {risk_model_id: 3, client_id: 24, advisor_id: 27, status: "signed", pdf: "Vanguard_-_Investor_Questionnaire.pdf", questionnaire_id: 43},
#   {risk_model_id: 3, client_id: 17, advisor_id: 21, status: "pending", pdf: nil, questionnaire_id: 44}
# ])
# Questionnaire.create!([
#   {client_id: 15, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 20},
#   {client_id: 15, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 20},
#   {client_id: 15, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
#   {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
#   {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 3, question_5: 5, question_6: 1, question_7: 3, question_8: 4, question_9: 3, question_10: 5, question_11: 3, average: "57.6923076923077", advisor_id: 21},
#   {client_id: 17, question_1: 5, question_2: 5, question_3: 5, question_4: 4, question_5: 5, question_6: 5, question_7: 5, question_8: 4, question_9: 4, question_10: 5, question_11: 5, average: "100.0", advisor_id: 22},
#   {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 22},
#   {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
#   {client_id: 17, question_1: 5, question_2: 1, question_3: 4, question_4: 1, question_5: 1, question_6: 5, question_7: 1, question_8: 1, question_9: 4, question_10: 5, question_11: 5, average: "63.4615384615385", advisor_id: 21},
#   {client_id: 16, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 4, question_9: 4, question_10: 5, question_11: 5, average: "48.0769230769231", advisor_id: 19},
#   {client_id: 17, question_1: 5, question_2: 1, question_3: 5, question_4: 1, question_5: 1, question_6: 5, question_7: 1, question_8: 4, question_9: 1, question_10: 5, question_11: 5, average: "65.3846153846154", advisor_id: 22},
#   {client_id: 15, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
#   {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 21},
#   {client_id: 17, question_1: 3, question_2: 1, question_3: 3, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "28.8461538461538", advisor_id: 19},
#   {client_id: 17, question_1: 3, question_2: 4, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 3, question_11: 1, average: "34.6153846153846", advisor_id: 21},
#   {client_id: 17, question_1: 5, question_2: 5, question_3: 5, question_4: 4, question_5: 1, question_6: 4, question_7: 4, question_8: 4, question_9: 4, question_10: 5, question_11: 4, average: "86.5384615384615", advisor_id: 22},
#   {client_id: 18, question_1: 5, question_2: 4, question_3: 5, question_4: 4, question_5: 5, question_6: 4, question_7: 4, question_8: 4, question_9: 4, question_10: 3, question_11: 5, average: "90.3846153846154", advisor_id: 29},
#   {client_id: 18, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 29},
#   {client_id: 17, question_1: 4, question_2: 1, question_3: 3, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "30.7692307692308", advisor_id: 21},
#   {client_id: 20, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 32},
#   {client_id: 22, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
#   {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
#   {client_id: 24, question_1: 4, question_2: 3, question_3: 5, question_4: 1, question_5: 1, question_6: 4, question_7: 2, question_8: 1, question_9: 3, question_10: 4, question_11: 1, average: "55.7692307692308", advisor_id: 27},
#   {client_id: 17, question_1: 3, question_2: 3, question_3: 4, question_4: 3, question_5: 3, question_6: 2, question_7: 4, question_8: 3, question_9: 2, question_10: 4, question_11: 3, average: "65.3846153846154", advisor_id: 21}
# ])
RiskModel.create!([
  {name: "Low Risk", risk_level: 1, description: "This the lowest possible risk", companies: "", etfs: "", stocks: 20, bonds: 80},
  {name: "Mild Risk", risk_level: 2, description: "This model accepts moderate risk", companies: nil, etfs: nil, stocks: 40, bonds: 60},
  {name: "Moderate Risk", risk_level: 3, description: "This model is risky", companies: nil, etfs: nil, stocks: 60, bonds: 40},
  {name: "Elevated Risk", risk_level: 4, description: "This model is very risky---only for long term", companies: nil, etfs: nil, stocks: 80, bonds: 20},
  {name: "Highest Risk", risk_level: 5, description: "This is the most risky", companies: nil, etfs: nil, stocks: 100, bonds: 0}
])
