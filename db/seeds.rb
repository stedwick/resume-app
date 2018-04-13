# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

philip = Person.find_by name: "Philip Brocoum"
philip ||= Person.new
philip.update({
  name: "Philip Brocoum",
  about: "Full-stack Ruby on Rails developer",
  location: "Portland, OR",
  github: "https://github.com/stedwick",
  linkedin: "https://www.linkedin.com/in/philipbrocoum",
  facebook: "https://www.facebook.com/philip.brocoum",
  twitter: "https://twitter.com/stedwick",
  career_blurb: "I started developing for the web in 2008. I now have a decade of experience working with large apps, and I'm familiar with the newest and most popular technologies.\n\nThis site you're reading is made with [Rails 5](http://rubyonrails.org), [Bootstrap 4](https://getbootstrap.com), and [PostgreSQL](https://www.postgresql.org). It's deployed to [Microsoft Azure](https://azure.microsoft.com/) using [Docker](https://www.docker.com), [HAProxy](http://www.haproxy.org), [Nginx](http://nginx.org), and [Puma](http://puma.io). View the source on [GitHub](https://github.com/stedwick/resume).",
  skills_blurb: "I work with all the current tools and platforms for Ruby on Rails web development. I'm constantly trying out the cutting-edge as well, such as Docker.",
  education_blurb: "I'm a mathematician by education, and my first job was as a math teacher in New York City. Mathematics and programming are closely related, and I quickly took to my new career as a Ruby developer.",
  work_blurb: "This is a gallery of the Rails sites that I've worked on professionally.",
  projects_blurb: "This is a gallery of the Rails sites that I've worked on professionally.",
  old_blurb: "I work with all the current tools and platforms for Ruby on Rails web development. I'm constantly trying out the cutting-edge as well, such as Docker.",
  personal_blurb: "I maintain a healthy work/life balance. If you would like to learn more about me as a person, beyond my Ruby professional life, check out the links below!",
  contact_blurb: "Are you looking for a full-time Senior Ruby on Rails Developer or Engineering Manager? I'm based in New York City, but I also have years of experience working remotely. Drop me a line.",
  phone: "1 (347) 701-0252",
  email: "philip.brocoum@gmail.com",
  profile_pic: "philip-sq.jpg",
  background_img: "mt-hood.jpg"
})

i=0
item = philip.items.find_by name: "Ruby on Rails"
item ||= philip.items.build
item.update({
  name: "Ruby on Rails",
  link: "http://rubyonrails.org",
  icon: "ruby.png",
  description: "Rails 2, 3, 4, and 5.",
  blurb: nil,
  dates: nil,
  type_of: "skill",
  image: nil,
  fa: nil,
  order: i
})

i+=1
