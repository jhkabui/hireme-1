# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Application.destroy_all
Job.destroy_all
User.destroy_all

job1 = Job.create!(
  title: "Head of Engineering - Digital Experience Platform",
  location: "Berlin",
  description: "Help us to make mobile apps and web development as easy as it can be across Le Wagon by creating a scalable development platform to enable engineers and product managers across the group to focus on solving customer problems and building amazing digital experiences. Enable the management of events about customer actions and behaviours to further optimize the user experience.

- Lead, coach and mentor a team of full stack engineers and support them in executing complex engineering projects as well as support their career development.
- Ensure high availability of the platform by leveraging CI/CD automation and establishing a culture of operational excellence.
- Work together with engineering and product teams to create a state-of-the art architecture vision for our digital experience platform.
- Follow the latest developments in mobile app and web engineering and convert these learnings into a future-proof technology strategy.
- Foster collaboration with engineering and product teams which will consume the platforms delivered by the team.
",
  category: "Technology and UX / UI Design",
requirement: "- Extensive experience at scale as an engineering leader with designing web and app rendering platforms, data streams and API gateways.
- Experience with DevOps work culture and track record owning large scale engineering systems from design through deployment to production.
- A combination of deep engineering skills and people management skills.
- Excellent communication skills in English with a proven ability to articulate complex architectures and solution concepts in a concise and comprehensive way.
- A team player who energizes others with passion for e-commerce and high tech engineering.
- A leader who thinks big and acts fast with an eye to customer needs.",
  )

job2 = Job.create!(
  title: "Backend Engineer (Java / Scala / Kotlin) - Tech Logistics",
  location: "Berlin",
  description: "As an engineer in Tech Logistics, you will develop logistics systems to support the delivery of millions of items to our customers. You would be a part of one of our teams that develop systems that, for example do stock distribution across warehouses, handle receive distribution and storage of goods and returns, develop algorithms to optimize the utilization of automation and staff, or create processes to ship goods to our customers while reducing errors and improving performance of logistics centers.

- Develop and execute mid- & long-term technical vision and architecture with your team, while closely collaborating with Engineering Managers to be in line with our overall tech strategy. You will support teams driving the design and implementation of applications used by our colleagues in our logistics centers, platform services, and algorithmic optimizations (such as route planning and task scheduling).
- Manage your services from architecture to testing, deployment and operation in an agile environment.
- Collaborate with and mentor a multi-disciplinary team of backend, frontend, and research engineers.
- Facilitate communication and decision-making in your team and with other engineering teams and stakeholders.
",
  category: "Technology and UX / UI Design",
requirement: "- Various levels of experience in professional programming in Java, Scala or Kotlin with expertise in microservices architecture, distributed systems, RESTful APIs and event-driven design. Knowledgeable in data structures, SQL and NoSQL, Spring/Play/Akka framework, and experience with AWS and Kubernetes.
- Experience in building high-volume services in distributed systems, in delivering high quality code and knowledge of how to deploy and maintain it. Interest and knowledge in Python or similar languages are a plus.
- Curiosity about algorithms, machine learning or mathematics.
- Fluent and effective communication and ability to understand business requirements in an agile environment.",
  )

job3 = Job.create!(
  title: "Director of Design",
  location: "Berlin",
  description: "The core of Le Wagons's digital experience is delivered by a set of 4 design teams, which you would lead in this role. Each team is responsible for a related set of customer experience themes and promises. We want to ensure our customers are offered a flawless choice for a complete wardrobe, the best inspiration and advice across different occasions and stages of life, a tailored experience based on personal interests and engagement, a seamless and convenient experience with time saving features and services, and an experience they can trust, in terms of protecting the data they share, but also around the quality and safety of our merchandise, and our continuing journey on recognising the social and environmental impact fashion has,  working on our goal to become an increasingly sustainable platform.

- As Director of Product Design, you will ensure that each of our  27 million + customers feel like we take them personally by the hand on their fashion journey, from start to finish. Shoppers will find a relevant and inspiring store, filled with an assortment of products. Le Wagon will be their preferred fashion destination because we provide both inspiration and function, both joy-of-use and ease-of-use. Brands will love that we present their products in the best light — ways they couldn't on their own — and that we connect them in meaningful ways with consumers, making Le Wagon their most trusted partner.
- This position is within our Digital Experience business unit and reports to our SVP of Product Design.
- You will lead the design teams embedded into our 4 customer experience pillars.  In close collaboration with other designers (in pillar-crossing programs, the Studio and the design system) plus user researchers, product managers, engineering managers and data scientists, your teams will deliver best-in-class user experiences around topics like personalization, customization, your account, personal style and fit, and favourite brands.
- Deliver on our most impactful customer problems; choreograph user-centered design processes and orchestrate unified user experiences across devices and throughout the customer journey.  You will assure the quality of both design deliverables and the resulting customer experience.
- Collaborate with Product Managers, Data Scientists and Engineers to define what personalised and customised experience should be on Le Wagon. You'll inspire the organization with your ability to create a customer experience vision and tell a compelling business story (with the customer as the hero).
- Build the leading design team in Europe; an organization that deeply understands consumers' fashion tastes, desires and motivations, empowering your design teams and tech management peers to get to know our customers intimately, both through individual interviews and data mining.
- Implement the most effective team set-up, considering  levels of seniority, ensuring the team has eye-to-eye relationships with Product Management and Engineering stakeholders, developing a common vision to deliver on customer promises jointly.
",
  category: "Technology and UX / UI Design",
requirement: "To land this job, you will show and explain raw artifacts from your work defining product design strategy, executing tactically in a complex environment and leading people to perform at their best.
- You are a seasoned design professional with in-house design leadership experience. You may have led larger teams before, but you're inspired to dive deep with a lean team to solve truly meaningful problems that make customers feel like we understand them.
- You have the mindset and methodologies to understand your customers, colleagues and employees. Leading by example. you make us all better.
- A role model and design voice of the business. You bring not just users but also stakeholders and employees on a journey of increasing engagement by explaining a clear customer experience vision and telling compelling stories.
- Since you will lead design teams in Dublin and Berlin, some travel will be required; either city can be your home base — your choice.
- As part of a growing design management circle, you will step up to drive specific design operations topics like design critique, onboarding or team rituals — and to actively contribute to overarching topics that affect us all (e.g. hiring, team health and diversity, & inclusion)."
  )

job4 = Job.create!(
  title: "Offline-Marketing Manager",
  location: "Berlin",
  description: "As an Offline Marketing Manager, you will manage the setup and execution of offline campaigns along the customer journey through direct mails. You will be managing, monitoring and developing the customer experience in 12 countries. The position will be a maternity cover for 15 months.

- You manage and develop the customer lifecycle tactics and initiatives within the direct mail channel to maximize customer lifetime value through segmentation and personalized content
- You analyze large data sets & our customer lifecycle to identify direct mail marketing opportunities that drive user engagement and you proof your hypotheses through A/B testing
- You are the key interface for projects in order to facilitate the direct mail marketing strategies with internal & external stakeholders
- You are using confidently technologies and tools and contribute to the development of new technical solutions and trends.",
category: "Marketing",
requirement:"- You have 2+ years of experience in a customer-facing offline marketing or e-commerce role and a degree in economics for similar fields.
  - You have an analytical mindset and urge data-driven decision-making.
  - You speak English and German fluently, both written and verbally.
  - You are a team player with enthusiasm and commitment and have a sense for customer needs and trends."
  )

job5 = Job.create!(
  title: "Marketing Manager",
  location: "London",
  description: "In this Berlin-based role, as a (Sr.) Marketing Manager for Poland, you will focus on further developing this company as the primary destination for fashion and lifestyle in Poland. You will manage all local marketing activities with the aim of further strengthening the Le Wagon brand in PL as well as driving relevant traffic to our local site and app.

    - Define and implement a local touchpoint and media strategy for Poland in line with the country strategy and overall Demand strategy. Own the marketing budget for the PL (aligned with lead) including spend planning and follow up.
   - Manage and optimize the entire media spend (brand and performance) with the goal of maximizing the effectiveness of our investment both across measurable and non-measurable channels.
   - Steer our local media agencies to ensure the best possible (bad-ass) campaign execution together with Marketing Lead.
   - Localize and execute global and local campaigns across all relevant touchpoints including paid media and own channels in collaboration with the relevant teams (e.g. central Marketing Strategy & Campaign team, Marketing Controlling and retail). Develop and implement additional local marketing activities, discover insights and sources of growth to support the overall strategy.
   - Act as the guardian of the Le Wagon brand by ensuring consistency in communication (tone of voice) across the different touchpoints together with a local copywriter (direct report).",
  category: "Marketing",
  requirement:"- Degree in Business Administration or Marketing and strong understanding of the various Offline and Online Marketing Channels with focus on strategic media planning and buying.
  - 3-4 years of professional experience with Marketing (preferably within fashion and/or e-Commerce)"
  )

job6 = Job.create!(
  title: "Backend Engineer Personalized Marketing",
  location: "Berlin",
  description: "You will support us realize our vision to build a machine learning platform leveraging big data technologies to automate ad creation, management and bidding for one of Europe's largest online marketing budgets. You will work in a cross-functional team with product managers, product owners, data scientists, software engineers and data engineers, to take marketing to the next level.

    - Take ownership for designing, developing, deploying and operating marketing automation solutions
    - Deliver high quality software by paying strong attention to API design, automated tests, scalability and resilience
    - Be responsible of shaping a scalable and performant architecture of the systems that you will be working on
    - Proactively mentor, share knowledge and learn from your peers.",
  category: "Marketing",
  requirement:"- 5+ years of experience working in agile cross-functional teams; experience with at least 3 different programming languages. Scala, React and Python are a plus. Desire to learn Scala and/or React.",
  )

job7 = Job.create!(
  title: "Technology Recruiter",
  location: "Berlin",
  description: "As Recruiter in our Tech Talent Acquisition Team, you will own the e2e recruitment process for tech roles by closely collaborating with the leadership team, peers, hiring managers and diverse interviewers. Independently lead and continuously improve the end-to-end recruitment process of our tech vacancies

- Define strategies to find the right talent and fill crucial positions in different business units and on different job levels
- Take over the roll as a real talent advisor and coach, enable and hold your hiring managers accountable for offering an outstanding candidate experience and making the best hiring decisions
- Create and analyze recruitment dashboards and proactively share data-centric updates with the leadership team",
  category: "Legal and People",
  requirement: "End-to-end recruitment experience, proven track of hiring tech profiles, ability to dive into new topics and hiring needs quickly and independently, successful collaboration with diverse hiring managers
- Balance of creativity, focus, and determination to deliver an outstanding candidate experience and continuously raise the bar of our recruitment efforts
- Sourcing skills and a persuasive can-do mentality to achieve the best results possible within a defined time frame
- Curiosity and desire to analyze the recruitment progress and proactively share data-centric updates and solutions with the leadership team",
  )

job8 = Job.create!(
  title: "(Senior) HR Manager / Personalreferent (m/w/d)",
  location: "Paris",
  description: "Bei Tradebyte arbeitest Du mit den ganz großen Playern der E-Commerce-Branche partnerschaftlich zusammen – von angesagten Fashion-Marken bis zu großen Online-Shops. Dabei bieten wir Dir eine offene Arbeitsstruktur und einen unvergleichlichen Team-Spirit. Wir glauben daran, dass Job und Leidenschaft vereinbar sind und bieten Dir dafür das entsprechende Umfeld. Bei ständigem Wachstum sind wir auf der Suche nach neuen Kollegen, die unsere Leidenschaft an der Arbeit teilen. Love what you do – do what you love. Werde Teil von Tradebyte, einem selbstständigen Unternehmen innerhalb der Le Wagon Gruppe!

- Du hast eine kaufmännische Ausbildung oder ein Studium der Betriebswirtschaft, Rechtswissenschaft oder Psychologie erfolgreich abgeschlossen
- Du kannst bereits auf mehrjährige Berufserfahrung in einer vergleichbaren Position im Bereich Personalmanagement idealerweise mit Schwerpunkt Personal- und Organisationsentwicklung zurückgreifen
- Du besitzt eine strukturierte und lösungsorientierte Arbeitsweise, die es Dir ermöglicht, auch in stressigen Situationen den Überblick zu behalten
- Du bist ein Teamplayer mit Hands-on-Mentalität, den ausgeprägte Kommunikationsstärke, eine sehr gute Menschenkenntnis und Fingerspitzengefühl im Umgang mit Mitarbeitern und Führungskräften auszeichnen
- Du begeisterst Dich für HR-Trends und bist offen für moderne Arbeitsmethoden
- Du beherrschst Deutsch und Englisch verhandlungssicher und arbeitest gerne mit internationalen Teams zusammen",
  category: "Legal and People",
  requirement: "- Du hast eine kaufmännische Ausbildung oder ein Studium der Betriebswirtschaft, Rechtswissenschaft oder Psychologie erfolgreich abgeschlossen.
- Du kannst bereits auf mehrjährige Berufserfahrung in einer vergleichbaren Position im Bereich Personalmanagement idealerweise mit Schwerpunkt Personal- und Organisationsentwicklung zurückgreifen.
- Du besitzt eine strukturierte und lösungsorientierte Arbeitsweise, die es Dir ermöglicht, auch in stressigen Situationen den Überblick zu behalten.
- Du bist ein Teamplayer mit Hands-on-Mentalität, den ausgeprägte Kommunikationsstärke, eine sehr gute Menschenkenntnis und Fingerspitzengefühl im Umgang mit Mitarbeitern und Führungskräften auszeichnen.
- Du begeisterst Dich für HR-Trends und bist offen für moderne Arbeitsmethoden.
- Du beherrschst Deutsch und Englisch verhandlungssicher und arbeitest gerne mit internationalen Teams zusammen.",
  )

job9 = Job.create!(
  title: "HR Business Partner (m/w/d)",
  location: "Paris",
  description: "Als HR Business Partner (m/w/d) bist du kompetenter Ansprechpartner für Mitarbeiter und Führungskräfte. Zugleich verantwortest du das gesamte operative Personalgeschäft für einen definierten Mitarbeiter­kreis. Unterstütze als strategischer Partner unser Management mit deinem fundierten HR-Know How und leite durch die Analyse von People KPI`s geeignete Personalmaßnahmen ab.

- Gestalte aktiv unsere Prozesse und Veränderungen am Standort mit und kreiere deinen eigenen Fußabdruck
- Stelle mit uns die Effektivität unserer Kernaufgaben genauso sicher wie die Weiterentwicklung und Zufriedenheit unseres Personals
- Arbeite konstruktiv mit unserem Betriebsrat zusammen",
  category: "Legal and People",
  requirement: "Abgeschlossenes betriebswirtschaftliches, juristisches oder psychologisches Studium sowie einschlägige Berufserfahrung und Leidenschaft in einer vergleichbaren Position
- Sehr gute Kenntnisse im Arbeits- und Betriebsverfassungsrecht
- Kommunikationsgeschick und Fingerspitzengefühl im Umgang mit Mitarbeitern und Führungskräften
- Spaß an Herausforderungen, Teamplaying und immer neuen Themen und Projekten
- Strukturiertes und agiles Denken und sehr gute Englischkenntnisse",
  )

job11 = Job.create!(
  title: "Finance Controller-Logistic Services",
  location: "Berlin",
  description: "Develop and maintain reports for the accurate and timely delivery of core finance controlling processes: invoicing, pricing update, monthly closing, regular performance management, annual planning

- Together with Le Wagon Controlling teams, develop expertise in the cost structure of global Le Wagon logistics and ZFS specifics contained
- Establish basic processes for improving compliance of financial processes
- Support the operational teams and management with ad-hoc analysis to enable a sustainable yet aggressive growth strategy
- Gather and analyze relevant data autonomously within our Data Warehouse environment, and partner up with our BI team to create and maintain metrics, attributes, with both financial and operational focus, to contribute to performance improvement and quality assessments
- Build collaboration with the business, central finance functions, logistics controlling and BI for improving process and enhancing the usage of available systems (e.g.: Micro Strategy and SAP)",
    category:"Finance",
    requirement: "- You have successfully completed a university degree in the field of Business Administration, Logistics or Industrial Engineering and Management
- You have already gained professional experience in controlling and financial planning & appraisal, ideally in supply chain and e-commerce environment with both an operational and financial focus
- You are a can-do person, and taking ownership for the initiatives you drive
- You are deeply interested in Logistics and the various processes that drives it in the background
- Excellence in analytic thinking together with the ability to grasp the 'big-picture' and at the same time dive deep into details that drives it
- You are an expert in Excel and you have proficient knowledge of Business Intelligence solutions (strong plus would be 'Micro Strategy' and Power Pivot knowledge)
- A strong communicator and good stakeholder management, able to partner with the business and drive the joint agenda. You should also possess strong English skills
 "
  )

job12 = Job.create!(
  title: "Process Mining Manager - Finance",
  location: "London",
  description: "- You analyze the processes in Finance, backed by process mining, and develop recommendations to senior stakeholders for optimizations of the same

- You are responsible for creating meaningful and useful dashboards and KPIs for the Finance organization to use as a base for decision making
- You dive deep in the process data of multiple finance teams to understand patterns, trace defect areas, process improvement opportunities as well as root cause drivers in order to scope future state solutions, influence roadmap decisions and measure the effectiveness of the same
- You own and drive projects autonomously in order to implement new business activities, processes and technical solutions aiming  to reduce operating expenses, increase free cash flow and improve the experience of your internal customers",
  category: "Finance",
  requirement:"- You have successfully completed your studies with an Accounting and/or Finance background.
- You bring at least 3-5 years of experience in managing ERP and/or BI implementation projects. You understand how ERP and BI software works in general and are familiar with use cases in the area of Finance, including Accounting and Controlling
- Experience at managing, negotiating and working with a diverse level of seniority and subject matter expertise is essential.
- You are structured and organized yourself as well as eager to develop these skills  in others: you plan tasks and procedures carefully, set clear goals and keep track of results
- You are passionate about delivering high-quality projects while motivating your team members and keeping their enthusiasm high. You are used to working in a diverse team and dynamic environment
- You have a team focus and strong communication skills (English is mandatory, German is a plus). You have excellent Excel / Google Sheets and PowerPoint / Google Slides skills. Project management certification (Prince2, PMI, Agile) is a plus."
  )

user1 = User.create!(
  first_name: "Tom",
  last_name: "Cruise",
  telephone: "0172123456",
  grade_point_average: 2.7,
  highest_education_attained: "Bachelor",
  email: "test@test.com",
  password: "123456"
  )

application1 = Application.create!(
  job_id: job11.id,
  user_id: user1.id,
)

Admin = User.create!(
  first_name: "Admin",
  last_name: "Admin",
  telephone: "0172123456",
  grade_point_average: 2.7,
  highest_education_attained: "Bachelor",
  email: "admin@gmail.com",
  password: "adminadmin",
  admin: true
  )

puts 'seeds done'
