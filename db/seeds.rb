Advisor.create!([
  {name: "jamie", company: "Makes a Lot of Money", phone: "87656", email: "j@m", password_digest: "$2a$10$MpBjEd9pDhUJ7HxZfv7ONO8nuu5SDfcwAKPPEH3riSyzhRQd3YCWG", logo: "pb_hero.jpg", zip_code: "11206"},
  {name: "Brian", company: "is Rad", phone: "89765645", email: "b@r", password_digest: "$2a$10$Yg31WCruEfiKCpZ7M6RH6unkuzTKHuLYH9lT05h/v6BeKwuedORO.", logo: "pb_hero.jpg", zip_code: "80203"},
  {name: "marlon", company: "brando", phone: "567987675", email: "mar@b", password_digest: "$2a$10$NqiceMWAQKgKvwsc33lQce..c/.wgnG2pFi2HBBmQiZeTTgdt60vK", logo: "salad.jpg", zip_code: "11203"},
  {name: "hahaha", company: "hehehehe", phone: "08978675", email: "he@he", password_digest: "$2a$10$O9lTOXLzp4ELWzVCm91jjOcSR1ToiCFnV/X37XaCbcs/icf7VG55C", logo: "money.jpg", zip_code: "80206"},
  {name: "Heidi Ho", company: "Mofo", phone: "8976545678", email: "h@h", password_digest: "$2a$10$mwj47LzFdPVj/2do89cKbu7dXTm/UW0dK7LyIx84XrdXWPR5EC.Fq", logo: "money.jpg", zip_code: "80227"},
  {name: "Ken Thatchet", company: "Awesome Town", phone: "987675689", email: "k@t", password_digest: "$2a$10$YK9hbK28SV4jrBBjWON0Qu32r5skscsyyZ9CFFmdmjMugBsCo9XrC", logo: "advisor.jpeg", zip_code: "96701"},
  {name: "Kevin Kind", company: "Real Advisors", phone: "987675689", email: "k@p", password_digest: "$2a$10$X8bKxRXDnTymspTRGx9H6.qUAlcnef1M/ul6sAZoHCpsntudk2MYa", logo: "advisor.jpeg", zip_code: "96702"},
  {name: "James Johnson", company: "Country Investments", phone: "7976566798", email: "c@i", password_digest: "$2a$10$wlAK4sV2CEvO2HAVTuNSAuORBggmcycHBHPypTmHHkV8pQhZmLA5u", logo: "advisor.jpeg", zip_code: "30301"},
  {name: "diggy", company: "dooooo", phone: "09878675", email: "for@for", password_digest: "$2a$10$l0zOOmHGdVCFD7Us7QnjU.o.iM6l5hIV2slA6z4KiUk88NxY/p2Xe", logo: nil, zip_code: "877665"}
])
Client.create!([
  {name: "Mac", email: "m@m", phone: "456789", risk_tolerance: nil, password_digest: "$2a$10$Tgxlga6Fl633L8egj5Bf3e5lYvKfhtvXVldPPBHvwANWwak5udNQ6"},
  {name: "Judas", email: "judas@j", phone: "8976756", risk_tolerance: nil, password_digest: "$2a$10$Yj2GEVyS8jxuCPsOlKenTe5WniP5QqW3eO8ZkQg.RviyofGeDOyma"},
  {name: "judth masoni", email: "j@j", phone: "9786758", risk_tolerance: nil, password_digest: "$2a$10$giimAW2cfKHJW1Bwn4uM8uFX5fsVXZqvNvtEu9FemJRM8e0HICEVe"},
  {name: "Kevin Clien", email: "k@c", phone: "76865864", risk_tolerance: nil, password_digest: "$2a$10$GxN3BVlQzR1tjP66vLLtK.kghwooHRDhYqu.0s33WAqJPhR4P07Ee"},
  {name: "Alice Wong", email: "a@w", phone: "897867", risk_tolerance: nil, password_digest: "$2a$10$DBzV/nzmtxFn7cSXTU9rMOwpQIxAzQmyZYZnZGCNALqkZYDY3RsSC"}
])
Invitation.create!([
  {expiration: nil, advisor_id: 19, client_id: 15, status: "accepted"},
  {expiration: nil, advisor_id: 22, client_id: 15, status: "accepted"},
  {expiration: nil, advisor_id: 19, client_id: 17, status: "accepted"},
  {expiration: nil, advisor_id: 21, client_id: 17, status: "accepted"},
  {expiration: nil, advisor_id: 22, client_id: 17, status: "accepted"},
  {expiration: nil, advisor_id: 19, client_id: 16, status: "accepted"},
  {expiration: nil, advisor_id: 29, client_id: 18, status: "accepted"}
])
Proposal.create!([
  {risk_model_id: 1, client_id: 17, advisor_id: 19, status: "signed", pdf: "ethicapital_proposal.pdf", questionnaire_id: nil},
  {risk_model_id: 2, client_id: 16, advisor_id: 19, status: "signed", pdf: "Vanguard_-_Investor_Questionnaire.pdf", questionnaire_id: nil},
  {risk_model_id: 3, client_id: 17, advisor_id: 21, status: "signed", pdf: "ethicapital_proposal.pdf", questionnaire_id: nil},
  {risk_model_id: 3, client_id: 17, advisor_id: 22, status: "signed", pdf: "Vanguard_-_Investor_Questionnaire.pdf", questionnaire_id: nil},
  {risk_model_id: 1, client_id: 15, advisor_id: 19, status: "pending", pdf: nil, questionnaire_id: nil},
  {risk_model_id: 1, client_id: 17, advisor_id: 21, status: "pending", pdf: nil, questionnaire_id: nil},
  {risk_model_id: 2, client_id: 17, advisor_id: 19, status: "pending", pdf: nil, questionnaire_id: nil},
  {risk_model_id: 2, client_id: 17, advisor_id: 21, status: "pending", pdf: nil, questionnaire_id: nil},
  {risk_model_id: 4, client_id: 17, advisor_id: 22, status: "pending", pdf: nil, questionnaire_id: 36},
  {risk_model_id: 5, client_id: 18, advisor_id: 29, status: "pending", pdf: nil, questionnaire_id: 37},
  {risk_model_id: 1, client_id: 18, advisor_id: 29, status: "pending", pdf: nil, questionnaire_id: 38}
])
Questionnaire.create!([
  {client_id: 15, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 20},
  {client_id: 15, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 20},
  {client_id: 15, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
  {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
  {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 3, question_5: 5, question_6: 1, question_7: 3, question_8: 4, question_9: 3, question_10: 5, question_11: 3, average: "57.6923076923077", advisor_id: 21},
  {client_id: 17, question_1: 5, question_2: 5, question_3: 5, question_4: 4, question_5: 5, question_6: 5, question_7: 5, question_8: 4, question_9: 4, question_10: 5, question_11: 5, average: "100.0", advisor_id: 22},
  {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 22},
  {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
  {client_id: 17, question_1: 5, question_2: 1, question_3: 4, question_4: 1, question_5: 1, question_6: 5, question_7: 1, question_8: 1, question_9: 4, question_10: 5, question_11: 5, average: "63.4615384615385", advisor_id: 21},
  {client_id: 16, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 4, question_9: 4, question_10: 5, question_11: 5, average: "48.0769230769231", advisor_id: 19},
  {client_id: 17, question_1: 5, question_2: 1, question_3: 5, question_4: 1, question_5: 1, question_6: 5, question_7: 1, question_8: 4, question_9: 1, question_10: 5, question_11: 5, average: "65.3846153846154", advisor_id: 22},
  {client_id: 15, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
  {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 21},
  {client_id: 17, question_1: 3, question_2: 1, question_3: 3, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "28.8461538461538", advisor_id: 19},
  {client_id: 17, question_1: 3, question_2: 4, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 3, question_11: 1, average: "34.6153846153846", advisor_id: 21},
  {client_id: 17, question_1: 5, question_2: 5, question_3: 5, question_4: 4, question_5: 1, question_6: 4, question_7: 4, question_8: 4, question_9: 4, question_10: 5, question_11: 4, average: "86.5384615384615", advisor_id: 22},
  {client_id: 18, question_1: 5, question_2: 4, question_3: 5, question_4: 4, question_5: 5, question_6: 4, question_7: 4, question_8: 4, question_9: 4, question_10: 3, question_11: 5, average: "90.3846153846154", advisor_id: 29},
  {client_id: 18, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 29}
])
RiskModel.create!([
  {name: "Ultimate Risk", risk_level: 5, description: "This is the most risky", companies: nil, etfs: nil, stocks: 80, bonds: 20},
  {name: "Medium-High Risk", risk_level: 3, description: "This model is risky", companies: nil, etfs: nil, stocks: 40, bonds: 60},
  {name: "Medium Risk", risk_level: 2, description: "This model accepts moderate risk", companies: nil, etfs: nil, stocks: 20, bonds: 80},
  {name: "High Risk", risk_level: 4, description: "This model is very risky---only for long term", companies: nil, etfs: nil, stocks: 60, bonds: 40},
  {name: "Lowest Risk", risk_level: 1, description: "This the lowest possible risk", companies: "", etfs: "", stocks: 0, bonds: 100}
])
