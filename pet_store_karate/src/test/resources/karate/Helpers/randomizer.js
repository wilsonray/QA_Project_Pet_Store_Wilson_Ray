function fn() {
  var fakerClass = Java.type('com.github.javafaker.Faker')
  var faker = new fakerClass()
  var fakeUser = {
    id: parseInt(faker.number().digits(2), 10),
    username: faker.name().username(),
    firstName: faker.name().firstName(),
    lastName: faker.name().lastName(),
    email: faker.internet().emailAddress(),
    phone: faker.number().digits(3) + "-" + faker.number().digits(3) + "-" + faker.number().digits(3),
    password: faker.number().digits(6),
    userStatus: 0,
  }
  return fakeUser
}