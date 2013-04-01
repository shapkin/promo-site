u = User.create(name: 'Admin', email: "admin@mail.com",
                password: '12345678', password_confirmation: '12345678')
u.toggle!(:admin)