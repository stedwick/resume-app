# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# People
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
  career_blurb: "I started developing for the web in 2008. I now have a decade of experience working with large apps, and I'm familiar with the newest and most popular technologies.\n\nThis site you're reading is made with [Rails 5](http://rubyonrails.org), [Bootstrap 4](https://getbootstrap.com), and [PostgreSQL](https://www.postgresql.org). It's deployed to [Microsoft Azure](https://azure.microsoft.com/) using [Docker](https://www.docker.com), [HAProxy](http://www.haproxy.org), [Nginx](http://nginx.org), and [Puma](http://puma.io). View the source on [GitHub](https://github.com/stedwick/resume).\n\nMy skills include:",
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

# Skills
i=0
item = philip.items.find_by name: "Ruby on Rails"
item ||= philip.items.build
item.update({
  name: "Ruby on Rails",
  link: "http://rubyonrails.org",
  icon: "ruby.png",
  description: "Backend development with Rails 2, 3, 4, and 5",
  blurb: nil,
  dates: nil,
  type_of: "skill",
  image: nil,
  fa: nil,
  order: i
})

i+=1
item = philip.items.find_by name: "HTML/CSS/JS"
item ||= philip.items.build
item.update({
  name: "HTML/CSS/JS",
  link: "http://html-css-js.com/",
  icon: "html.png",
  description: "Frontend design with HTML 5, CSS 3, and jQuery",
  type_of: "skill",
  order: i
})

i+=1
item = philip.items.find_by name: "MySQL/PostgreSQL"
item ||= philip.items.build
item.update({
  name: "MySQL/PostgreSQL",
  link: "https://www.mysql.com/",
  icon: "mysql.png",
  description: "DB administration of MySQL & PostgreSQL",
  type_of: "skill",
  order: i
})

i+=1
item = philip.items.find_by name: "App Deployment"
item ||= philip.items.build
item.update({
  name: "App Deployment",
  link: "https://www.phusionpassenger.com",
  icon: "web.png",
  description: "Production Rails on Phusion Passenger, Apache, Nginx, and Puma",
  type_of: "skill",
  order: i
})

i+=1
item = philip.items.find_by name: "AWS/Azure"
item ||= philip.items.build
item.update({
  name: "AWS/Azure",
  link: "https://aws.amazon.com/",
  icon: "aws.png",
  description: "Scaling cloud infrastructure in AWS and Azure, including EC2, RDS, and S3",
  type_of: "skill",
  order: i
})

i+=1
item = philip.items.find_by name: "Docker"
item ||= philip.items.build
item.update({
  name: "Docker",
  link: "https://www.docker.com",
  icon: "docker.png",
  description: "Containerized deployment with Docker, Docker Compose, and Docker Machine",
  type_of: "skill",
  order: i
})

i+=1
item = philip.items.find_by name: "Chef"
item ||= philip.items.build
item.update({
  name: "Chef",
  link: "https://www.chef.io",
  icon: "chef.png",
  description: "Provisioning infrastructure as code",
  type_of: "skill",
  order: i
})

i+=1
item = philip.items.find_by name: "Linux"
item ||= philip.items.build
item.update({
  name: "Linux",
  link: "https://www.ubuntu.com",
  icon: "linux.png",
  description: "Ubuntu & CentOS server administration / bash scripting",
  type_of: "skill",
  order: i
})

i+=1
item = philip.items.find_by name: "git"
item ||= philip.items.build
item.update({
  name: "git",
  link: "https://github.com/stedwick",
  icon: "git.png",
  description: "git-flow is my preferred branching model",
  type_of: "skill",
  order: i
})

i+=1
item = philip.items.find_by name: "Vagrant"
item ||= philip.items.build
item.update({
  name: "Vagrant",
  link: "https://www.vagrantup.com/",
  icon: "vagrant.png",
  description: "Keeping dev and production parity",
  type_of: "skill",
  order: i
})

i+=1
item = philip.items.find_by name: "Social Networking"
item ||= philip.items.build
item.update({
  name: "Social Networking",
  link: "https://www.facebook.com/philip.brocoum",
  icon: "social.png",
  description: "API integration with Facebook, Twitter, Instagram, and LinkedIn",
  type_of: "skill",
  order: i
})

# Sites
i=0
item = philip.items.find_by name: "Merit"
item ||= philip.items.build
item.update({
  name: "Merit",
  link: "http://www.meritpages.com/",
  icon: "merit.png",
  description: "Ruby on Rails software engineer",
  blurb: "Meritpages.com is the largest Rails app I've ever worked on, comprising eight Rails apps deployed in a services architecture on AWS.",
  dates: "(2013 &ndash; 2016)",
  location: "New York, NY",
  type_of: "site",
  image: "merit-site.jpg",
  fa: nil,
  order: i
})

i+=1
item = philip.items.find_by name: "Go Green Ride"
item ||= philip.items.build
item.update({
  name: "Go Green Ride",
  link: "http://www.gogreenride.com",
  icon: "gogreenride.png",
  description: "Ruby on Rails consultant",
  blurb: "GoGreenRide.com is a ride-sharing backend similar to Uber, deployed on Rackspace using Passenger.",
  dates: "(2013)",
  location: "Bayonne, NJ",
  type_of: "site",
  image: "gogreenride-site.jpg",
  fa: nil,
  order: i
})

i+=1
item = philip.items.find_by name: "readabout.me"
item ||= philip.items.build
item.update({
  name: "readabout.me",
  link: "http://web.archive.org/web/20130601003317/http://readabout.me/",
  icon: "readaboutme.png",
  description: "Ruby on Rails software engineer",
  blurb: "readabout.me was the predecessor to Meritpages.com, deployed on Heroku.",
  dates: "(2012 &ndash; 2013)",
  location: "New York, NY",
  type_of: "site",
  image: "readaboutme-site.jpg",
  fa: nil,
  order: i
})

i+=1
item = philip.items.find_by name: "readMedia"
item ||= philip.items.build
item.update({
  name: "readMedia",
  link: "https://web.archive.org/web/20110811204633/http://www.readmedia.com:80/",
  icon: "readmedia.png",
  description: "Ruby on Rails web developer",
  blurb: "readMedia sends press releases via mail merge for their clients. I upgraded the existing Rails 2 app to Rails 3, and was one of three developers working full-time on the app for many years.",
  dates: "(2008 &ndash; 2013)",
  location: "New York, NY",
  type_of: "site",
  image: "readmedia-site.jpg",
  fa: nil,
  order: i
})
