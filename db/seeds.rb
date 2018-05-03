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
  about: "Ruby on Rails developer and DevOps engineer",
  location: "Portland, OR",
  github: "https://github.com/stedwick",
  linkedin: "https://www.linkedin.com/in/philipbrocoum",
  facebook: "https://www.facebook.com/philip.brocoum",
  twitter: "https://twitter.com/stedwick",
  career_blurb: "<div class='col-12 col-lg-6'><p>I started developing for the web in 2008. I now have a decade of experience working with large apps, and I'm familiar with the newest and most popular technologies.</p></div>
  
  <div class='col-12 col-lg-6'><p>This site you're reading is made with [Rails 5](http://rubyonrails.org), [Bootstrap 4](https://getbootstrap.com), and [PostgreSQL](https://www.postgresql.org). It's deployed to [Microsoft Azure](https://azure.microsoft.com/) using [Docker](https://www.docker.com), [Let's Encrypt](https://letsencrypt.org/), [HAProxy](http://www.haproxy.org), [Nginx](http://nginx.org), and [Puma](http://puma.io). View the source on [GitHub](https://github.com/stedwick/resume).</p></div>",
  # skills_blurb: "I work with all the current tools and platforms for Ruby on Rails web development. I'm constantly trying out the cutting-edge as well, such as Docker.",
  education_blurb: "I'm a mathematician by education, and my first job was as a math teacher in New York City. Mathematics and programming are closely related, and I quickly took to my new career as a Ruby developer.",
  # TODO
  work_blurb: "This is a gallery of the Rails sites that I've worked on professionally.",
  projects_blurb: "I've been a full-stack Ruby on Rails web developer since 2008. I have nearly a decade of experience working with large web applications running on Ruby on Rails, MySQL, Amazon AWS, Linux, git, Chef, and more. This is a gallery of the Rails sites that I've worked on professionally.",
  old_blurb: "I work with all the current tools and platforms for Ruby on Rails web development. I'm constantly trying out the cutting-edge as well, such as Docker.",
  personal_blurb: "I maintain a healthy work/life balance. If you would like to learn more about me beyond my Ruby professional life, check out the links below!",
  contact_blurb: "<span class=\"dropcaps\">Hi there!</span> If you've made it this far, drop me a line. I'm looking for a _**full-time remote**_ position, in either Ruby on Rails or DevOps. I have 8 years of experience working remotely: I work M-F 9-5 from my home office and I'm always available on Slack or chat, and for pair programming and video calls. I'm also happy to travel onsite on a regular schedule or as needed. Send me an email, let me know what your company is working on, and I'll speak with you soon.",
  phone: "1 (347) 701-0252",
  email: "philip.brocoum@gmail.com",
  profile_pic: "philip-sq.jpg",
  background_img: "my-name-is-phil.jpg"
})

# Skills
i=0
skill = philip.skills.find_by name: "Ruby on Rails"
skill ||= philip.skills.build
skill.update({
  name: "Ruby on Rails",
  link: "http://rubyonrails.org",
  icon: "ruby.png",
  description: "Backend development with Rails 2, 3, 4, and 5",
  blurb: nil,
  dates: nil,
  image: nil,
  order: i
})

i+=1
skill = philip.skills.find_by name: "HTML/CSS/JS"
skill ||= philip.skills.build
skill.update({
  name: "HTML/CSS/JS",
  link: "http://html-css-js.com/",
  icon: "html.png",
  description: "Frontend design with HTML 5, CSS 3, and jQuery",
  order: i
})

i+=1
skill = philip.skills.find_by name: "MySQL/PostgreSQL"
skill ||= philip.skills.build
skill.update({
  name: "MySQL/PostgreSQL",
  link: "https://www.mysql.com/",
  icon: "mysql.png",
  description: "DB administration of MySQL & PostgreSQL",
  order: i
})

i+=1
skill = philip.skills.find_by name: "App Deployment"
skill ||= philip.skills.build
skill.update({
  name: "App Deployment",
  link: "https://www.phusionpassenger.com",
  icon: "web.png",
  description: "Production Rails on Phusion Passenger, Apache, Nginx, and Puma",
  order: i
})

i+=1
skill = philip.skills.find_by name: "AWS/Azure"
skill ||= philip.skills.build
skill.update({
  name: "AWS/Azure",
  link: "https://aws.amazon.com/",
  icon: "aws.png",
  description: "Scaling cloud infrastructure in AWS and Azure, including EC2, RDS, and S3",
  order: i
})

i+=1
skill = philip.skills.find_by name: "Docker"
skill ||= philip.skills.build
skill.update({
  name: "Docker",
  link: "https://www.docker.com",
  icon: "docker.png",
  description: "Containerized deployment with Docker, Docker Compose, and Docker Machine",
  order: i
})

i+=1
skill = philip.skills.find_by name: "Chef"
skill ||= philip.skills.build
skill.update({
  name: "Chef",
  link: "https://www.chef.io",
  icon: "chef.png",
  description: "Provisioning infrastructure as code",
  order: i
})

i+=1
skill = philip.skills.find_by name: "Linux"
skill ||= philip.skills.build
skill.update({
  name: "Linux",
  link: "https://www.ubuntu.com",
  icon: "linux.png",
  description: "Ubuntu & CentOS server administration / bash scripting",
  order: i
})

i+=1
skill = philip.skills.find_by name: "git"
skill ||= philip.skills.build
skill.update({
  name: "git",
  link: "https://github.com/stedwick",
  icon: "git.png",
  description: "git-flow is my preferred branching model",
  order: i
})

i+=1
skill = philip.skills.find_by name: "Vagrant"
skill ||= philip.skills.build
skill.update({
  name: "Vagrant",
  link: "https://www.vagrantup.com/",
  icon: "vagrant.png",
  description: "Keeping dev and production parity",
  order: i
})

i+=1
skill = philip.skills.find_by name: "Photoshop"
skill ||= philip.skills.build
skill.update({
  name: "Photoshop",
  link: "https://www.adobe.com/products/photoshop.html",
  icon: "photoshop.png",
  description: "Image editing and optimization",
  order: i
})

i+=1
skill = philip.skills.find_by name: "Social Networking"
skill ||= philip.skills.build
skill.update({
  name: "Social Networking",
  link: "https://www.facebook.com/philip.brocoum",
  icon: "social.png",
  description: "API integration with Facebook, Twitter, Instagram, and LinkedIn",
  order: i
})

# Sites
i=0
site = philip.sites.find_by name: "Merit"
site ||= philip.sites.build
site.update({
  name: "Merit",
  link: "http://www.meritpages.com/",
  icon: "merit.png",
  description: "Ruby on Rails engineer",
  blurb: "Meritpages.com is the largest Rails app I've ever worked on, comprising eight Rails apps deployed in a services architecture on AWS.",
  dates: "2013 &ndash; 2016",
  location: "New York, NY",
  image: "merit-site.jpg",
  order: i
})

i+=1
site = philip.sites.find_by name: "Go Green Ride"
site ||= philip.sites.build
site.update({
  name: "Go Green Ride",
  link: "http://www.gogreenride.com",
  icon: "gogreenride.png",
  description: "Ruby on Rails consultant",
  blurb: "GoGreenRide.com is a ride-sharing backend similar to Uber, deployed on Rackspace using Passenger.",
  dates: "2013",
  location: "Bayonne, NJ",
  image: "gogreenride-site.jpg",
  order: i
})

i+=1
site = philip.sites.find_by name: "readabout.me"
site ||= philip.sites.build
site.update({
  name: "readabout.me",
  link: "http://web.archive.org/web/20130601003317/http://readabout.me/",
  icon: "readaboutme.png",
  description: "Ruby on Rails engineer",
  blurb: "readabout.me was the predecessor to Meritpages.com, deployed on Heroku.",
  dates: "2012 &ndash; 2013",
  location: "New York, NY",
  image: "readaboutme-site.jpg",
  order: i
})

i+=1
site = philip.sites.find_by name: "readMedia"
site ||= philip.sites.build
site.update({
  name: "readMedia",
  link: "https://web.archive.org/web/20110811204633/http://www.readmedia.com:80/",
  icon: "readmedia.png",
  description: "Ruby on Rails developer",
  blurb: "readMedia sends press releases via mail merge for their clients. I upgraded the existing Rails 2 app to Rails 3, and was one of three developers working full-time on the app for many years.",
  dates: "2008 &ndash; 2013",
  location: "New York, NY",
  image: "readmedia-site.jpg",
  order: i
})

i+=1
site = philip.sites.find_by name: "Brightidea"
site ||= philip.sites.build
site.update({
  name: "Brightidea",
  link: "http://www.brightidea.com",
  icon: "brightidea.png",
  description: "Analyst",
  blurb: "Brightidea provides online innovation management software. As one of their early employees, I helped with sales, onboarding, consulting, traveling, and running their software.",
  dates: "2007 &ndash; 2008",
  location: "New York, NY",
  image: "brightidea-site.jpg",
  order: i
})

# Projects
i=0
project = philip.projects.find_by name: "Sci-Fi Voter"
project ||= philip.projects.build
project.update({
  name: "Sci-Fi Voter",
  link: "https://scifi-voter.herokuapp.com",
  svg: "star-trek",
  description: "Cast your vote",
  blurb: "Sci-Fi Voter definitively answers the question, \"What is the best Star Trek episode?\"",
  order: i
})

i+=1
project = philip.projects.find_by name: "Munch"
project ||= philip.projects.build
project.update({
  name: "Munch",
  link: "https://stedwick.github.io/munch/",
  svg: "cookie",
  description: "Test your wit",
  blurb: "The game of Munch! Can you beat the computer? I doubt it...",
  order: i
})

i+=1
project = philip.projects.find_by name: "Docker Dashboard"
project ||= philip.projects.build
project.update({
  name: "Docker Dashboard",
  link: "https://github.com/stedwick/docker-dashboard/",
  svg: "terminal",
  description: "View on GitHub",
  blurb: "Simple terminal dashboard for Docker using Tmux",
  order: i
})

i+=1
project = philip.projects.find_by name: "Taggy for Evernote"
project ||= philip.projects.build
project.update({
  name: "Taggy for Evernote",
  link: "https://github.com/stedwick/taggy-for-evernote",
  svg: "evernote",
  description: "View on GitHub",
  blurb: "Taggy for Evernote was my app in the Mac App Store. Taggy makes your Evernote tags function as you want them to: hierarchically.",
  order: i
})

i+=1
project = philip.projects.find_by name: "Arkanoid"
project ||= philip.projects.build
project.update({
  name: "Arkanoid",
  link: "https://github.com/stedwick/arkanoid",
  svg: "gamecontroller",
  description: "View on GitHub",
  blurb: "Arkanoid is my take on the classic Nintendo Breakout game. Written in C for MS DOS long ago.",
  order: i
})

# i+=1
# project = philip.projects.find_by name: "Boggle Solver"
# project ||= philip.projects.build
# project.update({
#   name: "Boggle Solver",
#   link: "https://youtu.be/Ey0XDupLo6U",
#   svg: "grid",
#   description: "View on YouTube",
#   blurb: "My boggle solver is for winning, er... cheating at the Facebook Scramble game.",
#   order: i
# })

# Schools
i=0
school = philip.schools.find_by name: "Massachusetts Institute of Technology"
school ||= philip.schools.build
school.update({
  name: "Massachusetts Institute of Technology",
  link: "http://web.mit.edu",
  svg: "mit",
  description: "B.S. in Mathematics",
  location: "Cambridge, MA",
  dates: "class of 2005",
  blurb: "I have two publications: [\"Reflections in a Euclidean Space,\"](http://ocw.mit.edu/courses/mathematics/18-06ci-linear-algebra-communications-intensive-spring-2004/projects/1806ciphil.pdf) and [\"Exploration of Reflection Holograms and Their Fringes With a Scanning Electron Microscope.\"](https://www.scribd.com/document/17377101/Exploration-of-Reflection-Holograms-and-Their-Fringes-With-a-Scanning-Electron-Microscope)",
  order: i
})

i+=1
school = philip.schools.find_by name: "New York University"
school ||= philip.schools.build
school.update({
  name: "New York University",
  link: "https://www.nyu.edu",
  svg: "nyu",
  location: "New York, NY",
  dates: "class of 2006",
  description: "M.A. in Math Education",
  blurb: "I attended NYU through [Math for America](https://www.mathforamerica.org) where I expanded my theoretical knowledge of mathematics with practical knowledge of teaching.",
  order: i
})

# Jobs
i=0
job = philip.jobs.find_by name: "NYC Department of Education"
job ||= philip.jobs.build
job.update({
  name: "NYC Department of Education",
  link: "http://schools.nyc.gov",
  svg: "classroom",
  description: "Math Teacher",
  location: "New York, NY",
  dates: "2006 &ndash; 2007",
  blurb: "After getting my Master's degree, I taught 6&ndash;8th grade math from 2006 &ndash; 2007 at the [Shuang Wen School (P.S. 184)](http://www.ps184m.org) in Chinatown.",
  order: i
})

# Interests
i=0
interest = philip.interests.find_by name: "My YouTube Channel"
interest ||= philip.interests.build
interest.update({
  name: "My YouTube Channel",
  link: "https://www.youtube.com/watch?v=YQtbcgBWobA",
  icon: "youtube",
  blurb: "At over 1 million views, my Yoshimoto Cube video is my 15 minutes of fame.",
  order: i
})

i+=1
interest = philip.interests.find_by name: "US Chess Federation"
interest ||= philip.interests.build
interest.update({
  name: "US Chess Federation",
  link: "http://www.uschess.org/msa/MbrDtlMain.php?14448371",
  icon: "chess",
  blurb: "Rated 1618 USCF and 2000-ish on [Lichess](https://lichess.org/@/PhilChessPDX), I'm always looking to improve.",
  order: i
})

i+=1
interest = philip.interests.find_by name: "MIT Sailing Club"
interest ||= philip.interests.build
interest.update({
  name: "MIT Sailing Club",
  link: "http://sailing.mit.edu",
  icon: "sailing",
  blurb: "I'm a lifetime member. If we are in Boston, I'll take you out on the Charles.",
  order: i
})

i+=1
interest = philip.interests.find_by name: "Toast the Dog!"
interest ||= philip.interests.build
interest.update({
  name: "Toast the Dog!",
  link: "https://www.instagram.com/toastwiththemost/",
  icon: "toast",
  blurb: "Such a good dog, but he sometimes sits onkjf ssadkl",
  order: i
})
