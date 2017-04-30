Advisor.create!([
  {name: "jamie", company: "Makes a Lot of Money", phone: "87656", email: "j@m", password_digest: "$2a$10$MpBjEd9pDhUJ7HxZfv7ONO8nuu5SDfcwAKPPEH3riSyzhRQd3YCWG", logo: "pb_hero.jpg"},
  {name: "Julius Cesaer", company: "Dressing", phone: "6754578", email: "j@c", password_digest: "$2a$10$GKiI4RRBt5wmzo6fep8xNOBQAptH4VRGLVxF3S8JaMmBBNSndjwNC", logo: "salad.jpg"},
  {name: "Brian", company: "is Rad", phone: "89765645", email: "b@r", password_digest: "$2a$10$Yg31WCruEfiKCpZ7M6RH6unkuzTKHuLYH9lT05h/v6BeKwuedORO.", logo: "pb_hero.jpg"},
  {name: "marlon", company: "brando", phone: "567987675", email: "mar@b", password_digest: "$2a$10$NqiceMWAQKgKvwsc33lQce..c/.wgnG2pFi2HBBmQiZeTTgdt60vK", logo: "salad.jpg"}
])
Client.create!([
  {name: "Mac", email: "m@m", phone: "456789", risk_tolerance: nil, password_digest: "$2a$10$Tgxlga6Fl633L8egj5Bf3e5lYvKfhtvXVldPPBHvwANWwak5udNQ6"},
  {name: "Judas", email: "judas@j", phone: "8976756", risk_tolerance: nil, password_digest: "$2a$10$Yj2GEVyS8jxuCPsOlKenTe5WniP5QqW3eO8ZkQg.RviyofGeDOyma"},
  {name: "judth masoni", email: "j@j", phone: "9786758", risk_tolerance: nil, password_digest: "$2a$10$giimAW2cfKHJW1Bwn4uM8uFX5fsVXZqvNvtEu9FemJRM8e0HICEVe"}
])
Invitation.create!([
  {expiration: nil, advisor_id: 19, client_id: 15, status: "accepted"},
  {expiration: nil, advisor_id: 22, client_id: 15, status: "accepted"},
  {expiration: nil, advisor_id: 19, client_id: 17, status: "accepted"},
  {expiration: nil, advisor_id: 21, client_id: 17, status: "pending"},
  {expiration: nil, advisor_id: 20, client_id: 16, status: "pending"}
])
Proposal.create!([
  {risk_model_id: 1, client_id: 15, advisor_id: 20, status: "pending", pdf: nil},
  {risk_model_id: 1, client_id: 15, advisor_id: 20, status: "pending", pdf: nil},
  {risk_model_id: 1, client_id: 15, advisor_id: 19, status: "pending", pdf: nil},
  {risk_model_id: 3, client_id: 17, advisor_id: 21, status: "accepted", pdf: nil},
  {risk_model_id: 1, client_id: 17, advisor_id: 19, status: "signed", pdf: "salad.jpg"}
])
Questionnaire.create!([
  {client_id: 15, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 20},
  {client_id: 15, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 20},
  {client_id: 15, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
  {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 1, question_5: 1, question_6: 1, question_7: 1, question_8: 1, question_9: 1, question_10: 1, question_11: 1, average: "21.1538461538462", advisor_id: 19},
  {client_id: 17, question_1: 1, question_2: 1, question_3: 1, question_4: 3, question_5: 5, question_6: 1, question_7: 3, question_8: 4, question_9: 3, question_10: 5, question_11: 3, average: "57.6923076923077", advisor_id: 21}
])
RiskModel.create!([
  {name: "Ultimate Risk", risk_level: 5, description: "This is the most risky", companies: nil, etfs: nil, stocks: 80, bonds: 20},
  {name: "Medium-High Risk", risk_level: 3, description: "This model is risky", companies: nil, etfs: nil, stocks: 40, bonds: 60},
  {name: "Medium Risk", risk_level: 2, description: "This model accepts moderate risk", companies: nil, etfs: nil, stocks: 20, bonds: 80},
  {name: "High Risk", risk_level: 4, description: "This model is very risky---only for long term", companies: nil, etfs: nil, stocks: 60, bonds: 40},
  {name: "Lowest Risk", risk_level: 1, description: "This the lowest possible risk", companies: "", etfs: "", stocks: 0, bonds: 100}
])
