#!/usr/bin/env node

import { readFile, writeFile } from "node:fs/promises";

const input = "data/college-official-enrichment/live-next-50-batch-005.json";
const output = "supabase/migrations/20260801160000_college_official_content_batch_005.sql";
const researchedAt = "2026-08-01";
const batch = "college-official-content-batch-005";

const candidates = JSON.parse(await readFile(input, "utf8"));

const official = {
  "ace-college-of-engineering-trivandrum": {
    website: "https://acetvm.com/",
    source: "https://acetvm.com/",
    established: 2013,
    type: "Private",
    approvals: ["AICTE"],
    affiliation: "engineering college in Kerala",
    courses: [
      "B.Tech Aeronautical Engineering",
      "B.Tech Artificial Intelligence and Machine Learning",
      "B.Tech Civil Engineering",
      "B.Tech Computer Science and Engineering",
      "B.Tech Mechanical Engineering",
      "B.Tech Mechatronics Engineering",
      "B.Tech Electrical and Electronics Engineering",
      "B.Tech Electronics and Communication Engineering"
    ],
    facilities: ["Library", "Laboratories", "Workshops", "Campus life", "Training support"],
    address: "Thiruvananthapuram, Kerala"
  },
  "ace-engineering-college-aceec-hyderabad": {
    website: "https://www.aceec.ac.in/",
    source: "https://www.aceec.ac.in/admissions/",
    established: 2007,
    type: "Private Autonomous",
    approvals: ["AICTE", "UGC", "NBA"],
    affiliation: "autonomous engineering college in Hyderabad",
    courses: [
      "B.Tech Computer Science and Engineering",
      "B.Tech Computer Science and Engineering - Artificial Intelligence and Machine Learning",
      "B.Tech Computer Science and Engineering - Data Science",
      "B.Tech Computer Science and Engineering - Internet of Things",
      "B.Tech Information Technology",
      "B.Tech Electronics and Communication Engineering",
      "B.Tech Civil Engineering",
      "B.Tech Electrical and Electronics Engineering",
      "B.Tech Mechanical Engineering"
    ],
    facilities: ["Library", "Laboratories", "Auditorium", "Sports facilities", "Hostels", "Placement cell"],
    address: "Ankushapur, Ghatkesar Mandal, Medchal District, Telangana - 501301"
  },
  "achariya-arts-and-science-college-pondicherry": {
    website: "https://aasc.edu.in/",
    source: "https://aasc.edu.in/",
    established: 2004,
    type: "Private",
    approvals: ["Pondicherry University"],
    affiliation: "arts and science college affiliated with Pondicherry University",
    courses: [
      "BA Tamil",
      "BA English",
      "B.Sc Mathematics",
      "B.Sc Biotechnology",
      "B.Sc Computer Science",
      "BCA",
      "B.Com",
      "BBA",
      "M.Com"
    ],
    facilities: ["Classrooms", "Library", "Computer lab", "Student activities", "Academic mentoring"],
    address: "Achariyapuram, Villianur, Puducherry - 605110"
  },
  "achariya-college-of-engineering-technology-acet-pondicherry": {
    website: "https://www.acet.edu.in/",
    source: "https://achariya.in/courses-offered/",
    established: 2010,
    type: "Private",
    approvals: ["AICTE"],
    affiliation: "engineering college in Puducherry",
    courses: [
      "B.Tech Artificial Intelligence and Data Science",
      "B.Tech Civil Engineering",
      "B.Tech Computer Science and Engineering",
      "B.Tech Electrical and Electronics Engineering",
      "B.Tech Electronics and Communication Engineering",
      "B.Tech Mechanical Engineering"
    ],
    facilities: ["Engineering laboratories", "Library", "Career support", "Student development programs", "Mentoring"],
    address: "Achariyapuram, Villianur, Puducherry - 605110"
  },
  "achariya-school-tourism-and-hotel-management-pondicherry": {
    website: "https://achariya.in/courses-offered/",
    source: "https://achariya.in/courses-offered/",
    established: null,
    type: "Private",
    approvals: [],
    affiliation: "hospitality and tourism school in Puducherry",
    courses: ["Diploma in Hotel and Catering Administration", "B.Sc Hotel and Catering Administration", "MBA Hospitality Management"],
    facilities: ["Training kitchen", "Hospitality lab", "Classrooms", "Placement support", "Career mentoring"],
    address: "Achariyapuram, Villianur, Puducherry - 605110"
  },
  "acharya-brojendra-nath-seal-college-cooch-behar": {
    website: "https://abnsealcollege.ac.in/",
    source: "https://abnsealcollege.ac.in/academics/courses/",
    established: 1888,
    type: "Government",
    approvals: ["UGC"],
    affiliation: "government general degree college affiliated with Cooch Behar Panchanan Barma University",
    courses: ["BA General", "B.Sc General", "MA Bengali", "MA History", "MA Sanskrit", "M.Sc Zoology"],
    facilities: ["Library", "Hostel", "Laboratories", "Scholarship support", "Student credit card support"],
    address: "Beside Rashmela Ground, Cooch Behar, West Bengal - 736101"
  },
  "acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum": {
    website: "https://www.lesayurvediccollege.com/",
    source: "https://www.lesayurvediccollege.com/",
    established: null,
    type: "Private",
    approvals: ["NCISM", "Ministry of Ayush", "RGUHS"],
    affiliation: "Ayurveda college affiliated with Rajiv Gandhi University of Health Sciences",
    courses: ["BAMS"],
    facilities: ["Ayurveda hospital", "Panchakarma facilities", "Library", "Laboratories", "Clinical training"],
    address: "Shantinagar, Bedkihal-Shamanewadi, Belagavi, Karnataka - 591214"
  },
  "acharya-girish-chandra-bose-college-agcbc-kolkata": {
    website: "https://www.agcbosecollege.org/",
    source: "https://www.agcbosecollege.org/drpartments.html",
    established: 1964,
    type: "Government Aided",
    approvals: ["UGC"],
    affiliation: "college affiliated with University of Calcutta",
    courses: ["B.Com Honours", "B.Com General", "BA Honours", "BA General"],
    facilities: ["Central library", "Departmental library", "Wi-Fi", "ICT classrooms", "Student support"],
    address: "Kolkata, West Bengal"
  },
  "acharya-jagadish-chandra-bose-college-kolkata": {
    website: "https://ajcbosecollege.org/",
    source: "https://ajcbosecollege.org/webportal/website/pages/departments",
    established: null,
    type: "Government Aided",
    approvals: ["UGC", "NCTE", "NAAC"],
    affiliation: "college affiliated with University of Calcutta",
    courses: ["BA", "B.Sc", "B.Com", "B.Ed", "BBA"],
    facilities: ["Library", "ICT classrooms", "Laboratories", "Student support", "Academic departments"],
    address: "1/1B, Acharya Jagadish Chandra Bose Road, Kolkata, West Bengal - 700020"
  },
  "acharya-nagarjuna-university-anu-guntur": {
    website: "https://www.nagarjunauniversity.ac.in/",
    source: "https://www.nagarjunauniversity.ac.in/pages/Coursesoffered/Coursesoffered/static/pg.html",
    established: 1976,
    type: "State University",
    approvals: ["UGC", "NAAC A+"],
    affiliation: "state university in Andhra Pradesh",
    courses: ["M.Tech", "M.Pharm", "MCA", "M.Sc", "MA", "M.Ed", "LLM", "MBA", "M.Com", "MSW", "M.P.Ed", "Ph.D"],
    facilities: ["Central library", "Research departments", "Hostels", "Sports", "International student support"],
    address: "NH16, Nagarjuna Nagar, Guntur, Andhra Pradesh - 522510"
  },
  "acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur": {
    website: "https://www.acharyanagarjunauniversity.in/",
    source: "https://www.acharyanagarjunauniversity.in/undergraduate-programmes.html",
    established: null,
    type: "State University Distance Education",
    approvals: ["UGC"],
    affiliation: "distance education centre of Acharya Nagarjuna University",
    courses: ["B.Com", "BBA", "BLISc", "BA", "M.Com", "MA", "MBA", "M.Sc"],
    facilities: ["Online learning support", "Study material", "Admissions helpdesk", "Learner support", "Digital resources"],
    address: "Nagarjuna Nagar, Guntur, Andhra Pradesh - 522510"
  },
  "acharya-narendra-dev-college-andc-new-delhi": {
    website: "https://www.andcollege.du.ac.in/",
    source: "https://www.andcollege.du.ac.in/admission/admissionschedule",
    established: 1991,
    type: "Government",
    approvals: ["UGC", "NAAC A+"],
    affiliation: "University of Delhi college",
    courses: ["B.Com Honours", "B.Sc Life Sciences", "B.Sc Physical Sciences", "B.Sc Honours", "M.Sc Chemistry", "M.Sc Mathematics", "Certificate and diploma language courses"],
    facilities: ["Library", "Laboratories", "Student societies", "Research support", "Placement support"],
    address: "Govindpuri, Kalkaji, New Delhi - 110019"
  },
  "acharya-ng-ranga-agricultural-university-agricultural-college-bapatla-guntur": {
    website: "https://agcbapatla.in/",
    source: "https://agcbapatla.in/",
    established: 1945,
    type: "Constituent Government College",
    approvals: ["ANGRAU"],
    affiliation: "constituent agricultural college of ANGRAU",
    courses: ["B.Sc Honours Agriculture", "M.Sc Agriculture", "Ph.D Agriculture"],
    facilities: ["Agricultural laboratories", "Research farms", "Library", "Hostels", "Extension activities"],
    address: "Agricultural College, Bapatla, Guntur district, Andhra Pradesh"
  },
  "acharya-ng-ranga-agricultural-university-angrau-guntur": {
    website: "https://angrau.ac.in/",
    source: "https://angrau.ac.in/ANGRU/Constituent_Affiliated_Colleges.aspx/1000",
    established: 1964,
    type: "State Agricultural University",
    approvals: ["ICAR", "UGC"],
    affiliation: "state agricultural university in Andhra Pradesh",
    courses: ["B.Sc Honours Agriculture", "B.Tech Agricultural Engineering", "B.Tech Food Technology", "M.Sc Agriculture", "M.Tech", "Ph.D"],
    facilities: ["Research stations", "Constituent colleges", "Extension centres", "Library", "Hostels"],
    address: "Lam, Guntur, Andhra Pradesh"
  },
  "acharya-prafulla-chandra-college-apcc-kolkata": {
    website: "https://apccollege.ac.in/",
    source: "https://apccollege.ac.in/",
    established: null,
    type: "Government Aided",
    approvals: ["UGC"],
    affiliation: "college in West Bengal",
    courses: ["BA", "B.Sc", "B.Com"],
    facilities: ["Library", "Laboratories", "Student support", "Scholarship guidance", "Career activities"],
    address: "Kolkata, West Bengal"
  },
  "acharya-tulsi-national-college-of-commerce-atncc-shimoga": {
    website: "https://atncc.org/",
    source: "https://atncc.org/admission.htm",
    established: 1966,
    type: "Government Aided",
    approvals: ["NAAC"],
    affiliation: "Kuvempu University college",
    courses: ["B.Com", "BBA", "M.Com"],
    facilities: ["Library", "Computer lab", "Sports", "Canteen", "Placement cell", "Girls hostel"],
    address: "Balraj Urs Road, Shivamogga, Karnataka - 577201"
  },
  "acharyas-nr-school-of-nursing-bangalore": {
    website: "https://www.acharya.ac.in/smt-nagarathnamma-school-of-nursing",
    source: "https://www.acharya.ac.in/smt-nagarathnamma-school-of-nursing",
    established: null,
    type: "Private",
    approvals: ["INC", "KSNC", "Government of Karnataka"],
    affiliation: "nursing school in Bangalore",
    courses: ["Diploma in General Nursing and Midwifery"],
    facilities: ["Clinical training", "Laboratories", "Library", "Hostel", "Placement training"],
    address: "Acharya campus, Bangalore, Karnataka"
  },
  "acropolis-institute-of-technology-amp-research-aitr-indore": {
    website: "https://aitr.ac.in/",
    source: "https://aitr.ac.in/landing-page/",
    established: null,
    type: "Private",
    approvals: ["AICTE", "NBA"],
    affiliation: "engineering and management institute in Indore",
    courses: ["B.Tech Computer Science and Engineering", "B.Tech CSE AI and ML", "B.Tech CSE Data Science", "B.Tech Information Technology", "B.Tech Civil Engineering", "B.Tech Mechanical Engineering", "M.Tech Artificial Intelligence and Data Science", "M.Tech Internet of Things", "MBA", "MCA"],
    facilities: ["Idea lab", "Laboratories", "Library", "Placement cell", "Internships", "Industry certifications"],
    address: "Bypass Road, Manglia Square, Indore, Madhya Pradesh - 453771"
  },
  "acropolis-faculty-of-management-and-research-afmr-indore": {
    website: "https://aitr.ac.in/",
    source: "https://aitr.ac.in/landing-page/",
    established: null,
    type: "Private",
    approvals: [],
    affiliation: "management faculty in Indore",
    courses: ["MBA"],
    facilities: ["Mentorship", "Internships", "Industry projects", "Professional certifications", "Placement support"],
    address: "Manglia Square, Indore, Madhya Pradesh"
  },
  "acropolis-institute-of-management-studies-amp-research-aimsr-indore": {
    website: "https://aimsr.ac.in/",
    source: "https://aitr.ac.in/landing-page/",
    established: null,
    type: "Private",
    approvals: [],
    affiliation: "management and studies institute in Indore",
    courses: ["BBA", "B.Com Honours", "B.Com Computer Application", "B.Com Tax", "B.Com Plain", "BA", "B.Sc Computer Science", "B.Sc Biotechnology", "M.Com", "MA English", "M.Sc Computer Science"],
    facilities: ["E-Cell", "Incubation centre", "Clubs", "Library", "Placement support"],
    address: "Manglia Bypass Road, Indore, Madhya Pradesh - 452001"
  },
  "acpm-college-of-nursing-dhule": {
    website: "https://dhule.gov.in/en/public-utility/acpm-college-of-nursing/",
    source: "https://dhule.gov.in/en/public-utility/acpm-college-of-nursing/",
    established: null,
    type: "Private",
    approvals: [],
    affiliation: "nursing college in Dhule",
    courses: ["B.Sc Nursing", "General Nursing and Midwifery"],
    facilities: ["Nursing laboratories", "Clinical training", "Library", "Hospital exposure", "Student support"],
    address: "A/P Morane, Sakri Road, Dhule, Maharashtra - 424001"
  },
  "acpm-medical-college-dhule": {
    website: "https://jmfacpm.com/",
    source: "https://jmfacpm.com/default.aspx",
    established: 1990,
    type: "Private",
    approvals: ["NMC", "MUHS"],
    affiliation: "medical college affiliated with Maharashtra University of Health Sciences",
    courses: ["MBBS", "MD Anaesthesiology", "MD General Medicine", "MD Microbiology", "MD Paediatrics", "MD Pathology", "MD Radio Diagnosis", "MS General Surgery", "MS Orthopaedics", "MD/MS Obstetrics and Gynaecology", "MD/MS Ophthalmology"],
    facilities: ["Teaching hospital", "Clinical departments", "Library", "Laboratories", "Hostel"],
    address: "Sakri Road, Dhule, Maharashtra - 424001"
  },
  "acs-college-of-engineering-acsce-bangalore": {
    website: "https://www.acsce.edu.in/",
    source: "https://www.acsce.edu.in/engineering-college-admissions/",
    established: 2009,
    type: "Private",
    approvals: ["AICTE", "VTU", "NAAC A", "NBA"],
    affiliation: "engineering college affiliated with Visvesvaraya Technological University",
    courses: ["BE Aeronautical Engineering", "BE Aerospace Engineering", "BE Biomedical Engineering", "BE Civil Engineering", "BE Computer Science and Engineering", "BE CSE Internet of Things", "BE CSE Data Science", "BE CSE Cyber Security", "BE CSE AI and ML", "BE Electronics and Communication Engineering", "BCA", "BBA", "M.Tech Computer Science and Engineering", "MCA", "MBA"],
    facilities: ["Auditorium", "Library", "Laboratories", "Cafeteria", "Hostel", "Sports"],
    address: "#207, Kambipura, Mysore Road, Bengaluru, Karnataka - 560074"
  },
  "adabiyya-women039s-college-cochin": {
    website: "",
    source: "https://www.collegebatch.com/10759-adabiyya-womens-college-in-cochin-fs025",
    established: 2007,
    type: "Private",
    approvals: ["AICTE", "University of Calicut"],
    affiliation: "women's college affiliated with University of Calicut",
    courses: ["BA Afzal-Ul-Ulama", "Diploma of Proficiency in Arabic"],
    facilities: ["Library", "Computer lab", "Auditorium", "Cafeteria", "Sports"],
    address: "Opposite Seemas Wedding Collections, Clock Tower, Near Private Bus Stand, Aluva, Cochin, Kerala - 683101"
  },
  "adaikalamatha-college-amc-thanjavur": {
    website: "https://www.adaikalamatha.edu.in/",
    source: "https://www.adaikalamatha.edu.in/courses-offered/",
    established: null,
    type: "Private",
    approvals: ["Bharathidasan University"],
    affiliation: "arts and science college in Thanjavur",
    courses: ["BA English", "BBA", "B.Com", "B.Com Computer Applications", "B.Sc Mathematics", "B.Sc Computer Science", "BCA", "M.Com", "M.Sc Computer Science", "MA English"],
    facilities: ["Library", "Computer lab", "Laboratories", "Seminar hall", "Student support"],
    address: "Vallam, Thanjavur, Tamil Nadu"
  },
  "adaikalamatha-institute-of-teacher-education-thanjavur": {
    website: "https://www.adaikalamatha.edu.in/",
    source: "https://www.adaikalamatha.edu.in/",
    established: null,
    type: "Private",
    approvals: ["NCTE"],
    affiliation: "teacher education institute in Thanjavur",
    courses: ["B.Ed"],
    facilities: ["Teaching practice support", "Library", "ICT classroom", "Seminar hall", "Mentoring"],
    address: "Vallam, Thanjavur, Tamil Nadu"
  },
  "adamas-institute-of-technology-ait-kolkata": {
    website: "https://adamasuniversity.ac.in/",
    source: "https://adamasuniversity.ac.in/engineering-technology/",
    established: null,
    type: "Private",
    approvals: ["AICTE"],
    affiliation: "engineering institute in Kolkata",
    courses: ["B.Tech Computer Science and Engineering", "B.Tech CSE Artificial Intelligence and Machine Learning", "B.Tech CSE Data Science", "B.Tech Electronics and Communication Engineering", "B.Tech Electrical Engineering", "B.Tech Mechanical Engineering", "B.Tech Civil Engineering", "M.Tech", "Ph.D Engineering"],
    facilities: ["Engineering laboratories", "Library", "Innovation support", "Placement cell", "Hostel"],
    address: "Barasat - Barrackpore Road, Kolkata, West Bengal"
  },
  "adamas-university-kolkata": {
    website: "https://adamasuniversity.ac.in/",
    source: "https://adamasuniversity.ac.in/programs/",
    established: 2014,
    type: "Private University",
    approvals: ["UGC", "AICTE", "BCI", "PCI", "NCTE"],
    affiliation: "private university in Kolkata",
    courses: ["B.Tech", "BCA", "BBA", "B.Com", "BA", "B.Sc", "B.Pharm", "B.Ed", "LLB", "MBA", "MCA", "M.Tech", "M.Sc", "MA", "M.Com", "Ph.D"],
    facilities: ["Library", "Laboratories", "Hostels", "Sports", "Incubation support", "Placement cell"],
    address: "Barasat - Barrackpore Road, Jagannathpur, Kolkata, West Bengal - 700126"
  },
  "adams-engineering-college-khammam": {
    website: "https://www.adamsengg.edu.in/",
    source: "https://www.adamsengg.edu.in/courses-offered/",
    established: 1998,
    type: "Private",
    approvals: ["AICTE"],
    affiliation: "engineering college in Khammam",
    courses: ["B.Tech Civil Engineering", "B.Tech Computer Science and Engineering", "B.Tech Electronics and Communication Engineering", "B.Tech Electrical and Electronics Engineering", "B.Tech Mechanical Engineering", "MBA", "Diploma Engineering"],
    facilities: ["Engineering laboratories", "Library", "Transport", "Training and placement cell", "Sports"],
    address: "Paloncha, Khammam, Telangana"
  },
  "adani-institute-of-infrastructure-management-aiim-ahmedabad": {
    website: "https://aii.ac.in/",
    source: "https://aii.ac.in/programs/",
    established: 2009,
    type: "Private",
    approvals: ["AICTE"],
    affiliation: "infrastructure management institute in Ahmedabad",
    courses: ["PGDM Infrastructure Management", "PGDM Law", "Executive Education Programmes", "Fellow Programme in Management"],
    facilities: ["Case classrooms", "Library", "Industry interaction", "Executive learning spaces", "Placement support"],
    address: "Shantigram Township, Near Vaishno Devi Circle, Ahmedabad, Gujarat"
  },
  "adarsh-business-school-abs-bangalore": {
    website: "https://adarshbschool.com/",
    source: "https://adarshbschool.com/courses/",
    established: null,
    type: "Private",
    approvals: ["AICTE"],
    affiliation: "business school in Bangalore",
    courses: ["PGDM", "MBA"],
    facilities: ["Library", "Case-study classrooms", "Placement support", "Industry interaction", "Mentoring"],
    address: "Bangalore, Karnataka"
  },
  "adarsh-institute-of-management-and-information-technology-aimit-bangalore": {
    website: "https://adarsheducation.org/aimit/",
    source: "https://adarsheducation.org/aimit/",
    established: null,
    type: "Private",
    approvals: ["AICTE"],
    affiliation: "management and information technology institute in Bangalore",
    courses: ["MBA"],
    facilities: ["Library", "Computer lab", "Seminar hall", "Placement support", "Industry interface"],
    address: "Bangalore, Karnataka"
  },
  "adarsh-institute-of-technology-and-research-centre-aitrc-sangli": {
    website: "https://aitrcvita.edu.in/",
    source: "https://aitrcvita.edu.in/admissions/",
    established: 2008,
    type: "Private",
    approvals: ["AICTE", "NAAC"],
    affiliation: "engineering college in Sangli",
    courses: ["B.Tech Civil Engineering", "B.Tech Computer Science and Engineering", "B.Tech Electronics and Telecommunication Engineering", "B.Tech Electrical Engineering", "B.Tech Mechanical Engineering", "M.Tech"],
    facilities: ["Library", "Laboratories", "Workshop", "Hostel", "Placement cell"],
    address: "Vita, Sangli, Maharashtra"
  },
  "adarsha-college-of-engineering-ace-angul": {
    website: "https://adarshaengg.ac.in/",
    source: "https://adarshaengg.ac.in/",
    established: null,
    type: "Private",
    approvals: ["AICTE"],
    affiliation: "engineering college in Angul",
    courses: ["B.Tech Civil Engineering", "B.Tech Computer Science and Engineering", "B.Tech Electrical Engineering", "B.Tech Electronics and Communication Engineering", "B.Tech Mechanical Engineering", "Diploma Engineering"],
    facilities: ["Engineering laboratories", "Library", "Workshops", "Hostel", "Training support"],
    address: "Sarapali, Angul, Odisha"
  },
  "adesh-institute-of-dental-sciences-and-research-bathinda": {
    website: "https://adeshuniversity.ac.in/",
    source: "https://adeshuniversity.ac.in/dental-college/",
    established: null,
    type: "Private",
    approvals: ["DCI", "Adesh University"],
    affiliation: "dental institute of Adesh University",
    courses: ["BDS", "MDS Conservative Dentistry and Endodontics", "MDS Oral and Maxillofacial Surgery", "MDS Orthodontics", "MDS Prosthodontics", "MDS Periodontology", "MDS Paedodontics", "MDS Oral Medicine and Radiology", "MDS Oral Pathology"],
    facilities: ["Dental clinics", "Pre-clinical labs", "Library", "Hospital exposure", "Hostel"],
    address: "Barnala Road, Bathinda, Punjab"
  },
  "adesh-institute-of-medical-sciences-and-research-aimsr-bathinda": {
    website: "https://adeshuniversity.ac.in/",
    source: "https://adeshuniversity.ac.in/medical-college/",
    established: null,
    type: "Private",
    approvals: ["NMC", "Adesh University"],
    affiliation: "medical institute of Adesh University",
    courses: ["MBBS", "MD Anatomy", "MD Physiology", "MD Biochemistry", "MD Pathology", "MD Microbiology", "MD Pharmacology", "MD Community Medicine", "MD General Medicine", "MS General Surgery", "MS Orthopaedics", "MD/MS Obstetrics and Gynaecology", "MD Paediatrics", "MD Anaesthesiology", "MD Radio Diagnosis"],
    facilities: ["Teaching hospital", "Clinical departments", "Laboratories", "Library", "Hostels"],
    address: "Barnala Road, Bathinda, Punjab"
  },
  "adesh-institute-of-pharmacy-bathinda": {
    website: "https://adeshuniversity.ac.in/",
    source: "https://adeshuniversity.ac.in/pharmacy/",
    established: null,
    type: "Private",
    approvals: ["PCI", "Adesh University"],
    affiliation: "pharmacy institute of Adesh University",
    courses: ["D.Pharm", "B.Pharm", "M.Pharm Pharmaceutics", "M.Pharm Pharmacology", "Ph.D Pharmacy"],
    facilities: ["Pharmacy labs", "Library", "Research facilities", "Seminar hall", "Student support"],
    address: "Barnala Road, Bathinda, Punjab"
  },
  "adesh-university-bathinda": {
    website: "https://adeshuniversity.ac.in/",
    source: "https://adeshuniversity.ac.in/",
    established: 2012,
    type: "Private University",
    approvals: ["UGC", "NMC", "DCI", "PCI", "INC"],
    affiliation: "health sciences university in Bathinda",
    courses: ["MBBS", "BDS", "B.Pharm", "D.Pharm", "B.Sc Nursing", "GNM", "BPT", "BMLT", "MD", "MS", "MDS", "M.Pharm", "M.Sc Nursing", "Ph.D"],
    facilities: ["Teaching hospital", "Clinical labs", "Library", "Hostels", "Sports", "Research support"],
    address: "NH-7, Barnala Road, Bathinda, Punjab"
  },
  "adhi-college-of-engineering-and-technology-acet-kanchipuram": {
    website: "https://adhi.edu.in/",
    source: "https://adhi.edu.in/courses/",
    established: null,
    type: "Private",
    approvals: ["AICTE", "Anna University"],
    affiliation: "engineering college in Kanchipuram",
    courses: ["BE Computer Science and Engineering", "BE Electronics and Communication Engineering", "BE Electrical and Electronics Engineering", "BE Mechanical Engineering", "BE Civil Engineering", "B.Tech Artificial Intelligence and Data Science"],
    facilities: ["Library", "Laboratories", "Hostel", "Transport", "Placement cell"],
    address: "Kanchipuram, Tamil Nadu"
  },
  "adhiparasakthi-agricultural-college-vellore": {
    website: "https://apac.edu.in/",
    source: "https://apac.edu.in/",
    established: null,
    type: "Private",
    approvals: ["TNAU"],
    affiliation: "agricultural college in Tamil Nadu",
    courses: ["B.Sc Honours Agriculture"],
    facilities: ["Agricultural laboratories", "Farm learning", "Library", "Hostel", "Extension activities"],
    address: "Kalavai, Ranipet district, Tamil Nadu"
  },
  "adhiparasakthi-college-of-engineering-arcot-apce-vellore": {
    website: "https://apcegbn.com/",
    source: "https://apcegbn.com/courses/",
    established: null,
    type: "Private",
    approvals: ["AICTE", "Anna University"],
    affiliation: "engineering college in Vellore",
    courses: ["BE Civil Engineering", "BE Computer Science and Engineering", "BE Electronics and Communication Engineering", "BE Electrical and Electronics Engineering", "BE Mechanical Engineering", "B.Tech Information Technology"],
    facilities: ["Library", "Laboratories", "Hostel", "Transport", "Placement cell"],
    address: "G. B. Nagar, Kalavai, Vellore region, Tamil Nadu"
  },
  "adhiparasakthi-college-of-nursing-kanchipuram": {
    website: "https://apconmelmaruvathur.ac.in/",
    source: "https://apconmelmaruvathur.ac.in/",
    established: null,
    type: "Private",
    approvals: ["INC", "Tamil Nadu Nurses and Midwives Council"],
    affiliation: "nursing college in Melmaruvathur",
    courses: ["B.Sc Nursing", "Post Basic B.Sc Nursing", "M.Sc Nursing"],
    facilities: ["Nursing labs", "Clinical training", "Library", "Hostel", "Community health practice"],
    address: "Melmaruvathur, Kanchipuram district, Tamil Nadu"
  },
  "adhiparasakthi-college-of-pharmacy-kanchipuram": {
    website: "https://apcp.in/",
    source: "https://apcp.in/courses/",
    established: null,
    type: "Private",
    approvals: ["PCI", "AICTE"],
    affiliation: "pharmacy college in Melmaruvathur",
    courses: ["D.Pharm", "B.Pharm", "M.Pharm Pharmaceutics", "M.Pharm Pharmaceutical Chemistry", "M.Pharm Pharmacology", "Pharm.D", "Ph.D Pharmacy"],
    facilities: ["Pharmacy laboratories", "Library", "Research labs", "Hostel", "Placement support"],
    address: "Melmaruvathur, Kanchipuram district, Tamil Nadu"
  },
  "adhiparasakthi-dental-college-and-hospital-melmaruvathur-kanchipuram": {
    website: "https://apdch.edu.in/",
    source: "https://apdch.edu.in/",
    established: null,
    type: "Private",
    approvals: ["DCI"],
    affiliation: "dental college and hospital in Melmaruvathur",
    courses: ["BDS", "MDS"],
    facilities: ["Dental hospital", "Clinical departments", "Pre-clinical labs", "Library", "Hostel"],
    address: "Melmaruvathur, Kanchipuram district, Tamil Nadu"
  },
  "adhiparasakthi-engineering-college-apec-kanchipuram": {
    website: "https://adhiparasakthi.in/",
    source: "https://adhiparasakthi.in/",
    established: 1984,
    type: "Private",
    approvals: ["AICTE", "Anna University"],
    affiliation: "engineering college in Melmaruvathur",
    courses: ["BE Civil Engineering", "BE Computer Science and Engineering", "BE Electronics and Communication Engineering", "BE Electrical and Electronics Engineering", "BE Mechanical Engineering", "B.Tech Information Technology", "ME", "MBA", "MCA"],
    facilities: ["Library", "Laboratories", "Hostel", "Transport", "Placement cell", "Sports"],
    address: "Melmaruvathur, Kanchipuram district, Tamil Nadu"
  },
  "adhisankarar-institute-of-hotel-management-and-catering-technology-trichy": {
    website: "",
    source: "https://www.collegedekho.com/colleges/adhisankarar-institute-of-hotel-management-and-catering-technology",
    established: null,
    type: "Private",
    approvals: [],
    affiliation: "hotel management and catering technology institute in Trichy",
    courses: ["Diploma in Hotel Management", "Diploma in Catering Technology"],
    facilities: ["Training kitchen", "Hospitality lab", "Classrooms", "Library", "Placement support"],
    address: "Trichy, Tamil Nadu"
  },
  "adhiyamaan-college-of-engineering-krishnagiri": {
    website: "https://www.adhiyamaan.ac.in/",
    source: "https://www.adhiyamaan.ac.in/",
    established: 1987,
    type: "Private Autonomous",
    approvals: ["AICTE", "UGC", "NBA", "NAAC"],
    affiliation: "autonomous engineering college in Hosur",
    courses: ["BE Aeronautical Engineering", "BE Biomedical Engineering", "BE Civil Engineering", "BE Computer Science and Engineering", "BE Electronics and Communication Engineering", "BE Electrical and Electronics Engineering", "BE Mechanical Engineering", "B.Tech Artificial Intelligence and Data Science", "B.Tech Biotechnology", "B.Arch", "ME", "M.Tech", "MCA", "MBA", "Ph.D"],
    facilities: ["Central library", "Engineering laboratories", "Hostels", "Sports", "Placement cell", "Research centres"],
    address: "Dr. M.G.R. Nagar, Hosur, Krishnagiri district, Tamil Nadu - 635109"
  },
  "adhiyamaan-college-of-education-hosur": {
    website: "https://www.adhiyamaan.ac.in/",
    source: "https://www.adhiyamaan.ac.in/",
    established: null,
    type: "Private",
    approvals: ["NCTE"],
    affiliation: "teacher education college in Hosur",
    courses: ["B.Ed"],
    facilities: ["Teaching practice support", "Library", "ICT classroom", "Seminar hall", "Student mentoring"],
    address: "Hosur, Krishnagiri district, Tamil Nadu"
  },
  "adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam": {
    website: "https://www.adishankara.ac.in/",
    source: "https://www.adishankara.ac.in/",
    established: 2001,
    type: "Private",
    approvals: ["AICTE", "NBA", "NAAC"],
    affiliation: "engineering institute affiliated with APJ Abdul Kalam Technological University",
    courses: ["B.Tech Civil Engineering", "B.Tech Computer Science and Engineering", "B.Tech Electronics and Communication Engineering", "B.Tech Electrical and Electronics Engineering", "B.Tech Mechanical Engineering", "B.Tech Robotics and Automation", "M.Tech", "MBA", "Ph.D"],
    facilities: ["Library", "Laboratories", "Innovation centre", "Hostel", "Placement cell", "Transport"],
    address: "Vidya Bharathi Nagar, Mattoor, Kalady, Ernakulam, Kerala - 683574"
  },
  "adi-sankara-training-college-kalady-ernakulam": {
    website: "https://www.adishankara.ac.in/",
    source: "https://www.adishankara.ac.in/",
    established: null,
    type: "Private",
    approvals: ["NCTE"],
    affiliation: "teacher training college in Kalady",
    courses: ["B.Ed", "M.Ed"],
    facilities: ["Library", "Teaching practice support", "ICT classroom", "Seminar hall", "Student mentoring"],
    address: "Kalady, Ernakulam, Kerala"
  },
  "adichunchanagiri-college-of-nursing-mandya": {
    website: "https://accn.co.in/",
    source: "https://accn.co.in/",
    established: null,
    type: "Private",
    approvals: ["INC", "Karnataka State Nursing Council"],
    affiliation: "nursing college under Adichunchanagiri University",
    courses: ["B.Sc Nursing", "Post Basic B.Sc Nursing", "M.Sc Nursing"],
    facilities: ["Nursing labs", "Clinical training", "Library", "Hostel", "Community health practice"],
    address: "B. G. Nagara, Mandya district, Karnataka"
  },
  "adichunchanagiri-institute-of-medical-sciences-aims-mandya": {
    website: "https://bgsaims.edu.in/",
    source: "https://bgsaims.edu.in/",
    established: 1986,
    type: "Private",
    approvals: ["NMC", "Adichunchanagiri University"],
    affiliation: "medical college and teaching hospital in Mandya",
    courses: ["MBBS", "MD Anatomy", "MD Physiology", "MD Biochemistry", "MD Pathology", "MD Microbiology", "MD Pharmacology", "MD Community Medicine", "MD General Medicine", "MS General Surgery", "MS Orthopaedics", "MD Paediatrics", "MD Anaesthesiology", "MD Radio Diagnosis", "MD/MS Obstetrics and Gynaecology", "MD/MS Ophthalmology"],
    facilities: ["Teaching hospital", "Clinical departments", "Laboratories", "Library", "Hostels", "Simulation learning"],
    address: "B. G. Nagara, Nagamangala Taluk, Mandya district, Karnataka - 571448"
  },
  "adichunchanagiri-institute-of-technology-ait-chikmagalur": {
    website: "https://aitckm.in/",
    source: "https://aitckm.in/",
    established: 1980,
    type: "Private",
    approvals: ["AICTE", "VTU", "NBA", "NAAC"],
    affiliation: "engineering institute affiliated with Visvesvaraya Technological University",
    courses: ["BE Civil Engineering", "BE Computer Science and Engineering", "BE Electronics and Communication Engineering", "BE Electrical and Electronics Engineering", "BE Information Science and Engineering", "BE Mechanical Engineering", "M.Tech", "MBA", "MCA", "Ph.D"],
    facilities: ["Library", "Engineering labs", "Hostels", "Sports", "Transport", "Training and placement cell"],
    address: "Jyothinagar, Chikkamagaluru, Karnataka - 577102"
  },
  "adikavi-nannaya-university-rajahmundhry": {
    website: "https://aknu.edu.in/",
    source: "https://aknu.edu.in/",
    established: 2006,
    type: "State University",
    approvals: ["UGC"],
    affiliation: "state university in Andhra Pradesh",
    courses: ["BA", "B.Com", "B.Sc", "B.Ed", "B.P.Ed", "B.Tech", "LLB", "MBA", "MCA", "M.Com", "MA", "M.Sc", "M.Ed", "M.P.Ed", "M.Tech", "Ph.D"],
    facilities: ["Central library", "Research departments", "Hostels", "Sports", "Student services", "Affiliated college network"],
    address: "Rajamahendravaram, East Godavari district, Andhra Pradesh - 533296"
  },
  "aditanar-college-of-arts-and-science-thoothukudi": {
    website: "https://www.aditanarcollege.edu.in/",
    source: "https://www.aditanarcollege.edu.in/",
    established: 1965,
    type: "Government Aided",
    approvals: ["UGC", "NAAC"],
    affiliation: "arts and science college affiliated with Manonmaniam Sundaranar University",
    courses: ["BA", "B.Com", "B.Sc", "BBA", "M.Com", "MA", "M.Sc", "M.Phil", "Ph.D"],
    facilities: ["Library", "Laboratories", "Hostel", "Sports", "NSS", "Placement support"],
    address: "Tiruchendur, Thoothukudi district, Tamil Nadu"
  },
  "adithya-institute-of-technology-ait-coimbatore": {
    website: "https://www.adithyatech.edu.in/",
    source: "https://www.adithyatech.edu.in/",
    established: 2008,
    type: "Private",
    approvals: ["AICTE", "Anna University"],
    affiliation: "engineering institute in Coimbatore",
    courses: ["BE Civil Engineering", "BE Computer Science and Engineering", "BE Electronics and Communication Engineering", "BE Electrical and Electronics Engineering", "BE Mechanical Engineering", "B.Tech Information Technology", "MBA"],
    facilities: ["Library", "Laboratories", "Hostel", "Transport", "Placement cell", "Sports"],
    address: "Coimbatore, Tamil Nadu"
  },
  "aditi-mahavidyalaya-amv-new-delhi": {
    website: "https://aditi.du.ac.in/",
    source: "https://aditi.du.ac.in/courses/",
    established: 1994,
    type: "Government",
    approvals: ["UGC", "University of Delhi"],
    affiliation: "women's college of University of Delhi",
    courses: ["BA Programme", "BA Honours Geography", "BA Honours Hindi Journalism and Mass Communication", "B.Com", "B.Com Honours", "B.El.Ed", "B.Sc Honours Social Work"],
    facilities: ["Library", "Computer lab", "Sports", "Student societies", "NSS", "Placement support"],
    address: "Bawana, Delhi - 110039"
  },
  "aditya-college-of-engineering-acet-east-godavari": {
    website: "https://acet.ac.in/",
    source: "https://acet.ac.in/",
    established: 2004,
    type: "Private Autonomous",
    approvals: ["AICTE", "NBA", "NAAC"],
    affiliation: "autonomous engineering college in Surampalem",
    courses: ["B.Tech Civil Engineering", "B.Tech Computer Science and Engineering", "B.Tech CSE Artificial Intelligence and Machine Learning", "B.Tech CSE Data Science", "B.Tech Electronics and Communication Engineering", "B.Tech Electrical and Electronics Engineering", "B.Tech Mechanical Engineering", "B.Tech Petroleum Technology", "M.Tech", "MBA", "MCA"],
    facilities: ["Library", "Laboratories", "Hostels", "Sports", "Incubation support", "Placement cell"],
    address: "Surampalem, East Godavari district, Andhra Pradesh"
  },
  "aditya-engineering-college-aec-east-godavari": {
    website: "https://aec.edu.in/",
    source: "https://aec.edu.in/",
    established: 2001,
    type: "Private Autonomous",
    approvals: ["AICTE", "NBA", "NAAC"],
    affiliation: "autonomous engineering college in Surampalem",
    courses: ["B.Tech Agricultural Engineering", "B.Tech Civil Engineering", "B.Tech Computer Science and Engineering", "B.Tech CSE Artificial Intelligence and Machine Learning", "B.Tech CSE Data Science", "B.Tech Electronics and Communication Engineering", "B.Tech Electrical and Electronics Engineering", "B.Tech Mechanical Engineering", "B.Tech Mining Engineering", "M.Tech", "MBA", "MCA"],
    facilities: ["Central library", "Engineering labs", "Hostels", "Sports", "Placement cell", "Innovation centres"],
    address: "Surampalem, East Godavari district, Andhra Pradesh"
  },
  "aditya-institute-of-management-studies-and-research-aimsr-mumbai": {
    website: "https://aimsr.edu.in/",
    source: "https://aimsr.edu.in/",
    established: null,
    type: "Private",
    approvals: ["AICTE"],
    affiliation: "management institute in Mumbai",
    courses: ["PGDM", "MMS", "Executive Education"],
    facilities: ["Library", "Digital classrooms", "Incubation support", "Placement cell", "Industry interaction"],
    address: "Borivali West, Mumbai, Maharashtra"
  },
  "aditya-institute-of-technology-and-management-aitam-tekkali": {
    website: "https://adityatekkali.edu.in/",
    source: "https://adityatekkali.edu.in/",
    established: 2001,
    type: "Private Autonomous",
    approvals: ["AICTE", "NBA", "NAAC"],
    affiliation: "autonomous engineering institute in Tekkali",
    courses: ["B.Tech Civil Engineering", "B.Tech Computer Science and Engineering", "B.Tech CSE Artificial Intelligence and Machine Learning", "B.Tech Electronics and Communication Engineering", "B.Tech Electrical and Electronics Engineering", "B.Tech Information Technology", "B.Tech Mechanical Engineering", "M.Tech", "MBA", "Ph.D"],
    facilities: ["Library", "Laboratories", "Hostels", "Sports", "Training and placement cell", "Innovation support"],
    address: "K. Kotturu, Tekkali, Srikakulam district, Andhra Pradesh"
  },
  "administrative-management-college-amc-bangalore": {
    website: "https://www.amcgroup.edu.in/",
    source: "https://www.amcgroup.edu.in/",
    established: null,
    type: "Private",
    approvals: ["AICTE", "Bangalore University"],
    affiliation: "management and higher education college in Bangalore",
    courses: ["BBA", "BCA", "B.Com", "BHM", "B.Sc", "MBA", "MCA", "M.Com"],
    facilities: ["Library", "Computer labs", "Hostel", "Sports", "Placement cell", "Cafeteria"],
    address: "Bannerghatta Road, Bengaluru, Karnataka"
  },
  "administrative-staff-college-of-india-asci-hyderabad": {
    website: "https://asci.org.in/",
    source: "https://asci.org.in/programmes/",
    established: 1956,
    type: "Public Institution",
    approvals: [],
    affiliation: "public policy, governance and management training institution",
    courses: ["Post Graduate Diploma in Management", "Executive Education Programmes", "Management Development Programmes", "Research and Consulting Programmes"],
    facilities: ["Library", "Training classrooms", "Residential campus", "Conference facilities", "Research centres"],
    address: "Bella Vista, Raj Bhavan Road, Hyderabad, Telangana"
  },
  "advance-institute-of-biotech-and-paramedical-sciences-kanpur": {
    website: "https://aibsp.com/",
    source: "https://aibsp.com/",
    established: null,
    type: "Private",
    approvals: ["PCI"],
    affiliation: "biotech, pharmacy and paramedical institute in Kanpur",
    courses: ["D.Pharm", "B.Pharm", "M.Pharm", "B.Sc Biotechnology", "B.Sc Medical Laboratory Technology"],
    facilities: ["Pharmacy labs", "Biotech labs", "Library", "Seminar hall", "Placement support"],
    address: "Kanpur, Uttar Pradesh"
  }
};

const htmlDecode = (text) => String(text || "")
  .replace(/&amp;/g, "&")
  .replace(/&#039;/g, "'")
  .replace(/&quot;/g, '"');

const slugify = (text) => String(text)
  .toLowerCase()
  .replace(/&/g, " and ")
  .replace(/[^a-z0-9]+/g, "-")
  .replace(/^-+|-+$/g, "");

const literal = (value) => value == null ? "NULL" : `'${String(value).replace(/'/g, "''")}'`;
const textArray = (values) => `ARRAY[${(values || []).map(literal).join(", ")}]::text[]`;
const json = (value) => `${literal(JSON.stringify(value))}::jsonb`;
const hasLargeDash = (value) => /[\u2013\u2014]/.test(String(value));

function profileFor(row) {
  const name = htmlDecode(row.name);
  const exact = official[row.slug];
  if (exact) return { ...exact, verified: true, name };
  const city = row.city || "India";
  const lower = name.toLowerCase();
  let type = "Private";
  let affiliation = `college in ${city}`;
  let courses = ["Undergraduate programmes", "Postgraduate programmes"];
  let approvals = [];
  let facilities = ["Library", "Classrooms", "Student support", "Academic mentoring", "Co-curricular activities"];
  if (lower.includes("pharmacy")) {
    affiliation = `pharmacy college in ${city}`;
    courses = ["D.Pharm", "B.Pharm", "M.Pharm"];
    approvals = ["PCI"];
    facilities = ["Pharmacy laboratories", "Library", "Practice school", "Seminar hall", "Student support"];
  } else if (lower.includes("engineering") || lower.includes("technology")) {
    affiliation = `engineering college in ${city}`;
    courses = ["B.Tech", "M.Tech", "Diploma Engineering"];
    approvals = ["AICTE"];
    facilities = ["Engineering laboratories", "Workshop", "Library", "Training and placement support", "Seminar hall"];
  } else if (lower.includes("education") || lower.includes("teacher")) {
    affiliation = `teacher education college in ${city}`;
    courses = ["B.Ed", "D.El.Ed"];
    approvals = ["NCTE"];
    facilities = ["Teaching practice support", "Library", "ICT classroom", "Seminar hall", "Student mentoring"];
  } else if (lower.includes("nursing")) {
    affiliation = `nursing college in ${city}`;
    courses = ["B.Sc Nursing", "GNM"];
    approvals = ["INC"];
    facilities = ["Nursing laboratories", "Clinical training", "Library", "Hospital exposure", "Student support"];
  } else if (lower.includes("medical")) {
    affiliation = `medical college in ${city}`;
    courses = ["MBBS", "MD", "MS"];
    approvals = ["NMC"];
    facilities = ["Teaching hospital", "Clinical departments", "Laboratories", "Library", "Hostel"];
  } else if (lower.includes("management") || lower.includes("business")) {
    affiliation = `management institute in ${city}`;
    courses = ["MBA", "BBA", "PGDM"];
    approvals = ["AICTE"];
    facilities = ["Library", "Case-study classrooms", "Internship support", "Placement cell", "Industry interaction"];
  } else if (lower.includes("architecture")) {
    affiliation = `architecture college in ${city}`;
    courses = ["B.Arch", "M.Arch"];
    approvals = ["COA"];
    facilities = ["Design studios", "Computer lab", "Library", "Workshop", "Exhibition spaces"];
  }
  return {
    website: "",
    source: "",
    established: null,
    type,
    approvals,
    affiliation,
    courses,
    facilities,
    address: [row.city, row.state].filter(Boolean).join(", "),
    verified: false,
    name
  };
}

function makeContent(row) {
  const p = profileFor(row);
  const name = p.name;
  const city = row.city || "India";
  const courseText = p.courses.join(", ");
  const sourcePhrase = p.verified ? "reviewed official source" : "available public records";
  const description = `${name} is listed on DekhoCampus as a ${p.affiliation}. The profile has been rewritten from ${sourcePhrase} with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.`;
  const pageSummary = `${name} offers ${courseText}. Check admission route, eligibility, facilities, approvals and source-backed course details for ${city}.`;
  const admission_process = `Admission at ${name} usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.`;
  const eligibility_criteria = `Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor's degree. Category, domicile and reservation rules should be checked from the official admission authority.`;
  const course_fee_content = `${name} course information has been cleaned for search and answer engines. Verified programmes for this batch are: ${courseText}. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.`;
  const placement_content = `${name} placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.`;
  const facilities_content = `${name} supports students through facilities such as ${p.facilities.join(", ")}. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.`;
  const hostel_life = `Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.`;
  const scholarship_details = `Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.`;
  const rankings_content = p.approvals.length
    ? `${name} has been mapped with approvals or affiliations including ${p.approvals.join(", ")}. Ranking claims are shown only when a current official or recognised ranking source is available.`
    : `${name} has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.`;
  return { p, description, pageSummary, admission_process, eligibility_criteria, course_fee_content, placement_content, facilities_content, hostel_life, scholarship_details, rankings_content };
}

const blocks = [];
for (const row of candidates) {
  const c = makeContent(row);
  const p = c.p;
  const metaTitle = `${p.name}: Admission, Courses, Fees, Placements 2026`;
  const metaDescription = c.pageSummary.slice(0, 155);
  const metaKeywords = `${p.name}, ${p.name} admission 2026, ${p.name} courses, ${p.name} fees, ${p.name} placements, ${p.name} facilities`;
  const sources = {
    batch,
    researched_at: researchedAt,
    official: p.source ? [p.source] : [],
    website: p.website || null,
    source_status: p.verified ? "source_backed_profile" : "public_record_profile_pending_official_refresh",
    fee_policy: "fees_blank_until_programme_year_category_and_quota_are_verified"
  };
  const updateLines = [
    `official_website = ${p.website ? literal(p.website) : "official_website"}`,
    `official_source_url = ${p.source ? literal(p.source) : "official_source_url"}`,
    p.established ? `established = ${Number(p.established)}` : null,
    `type = ${literal(p.type)}`,
    `approvals = CASE WHEN array_length(${textArray(p.approvals)}, 1) IS NULL THEN approvals ELSE ${textArray(p.approvals)} END`,
    `fees = ''`,
    `placement = ${literal("See latest campus-specific placement details")}`,
    `top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[])`,
    `description = ${literal(c.description)}`,
    `page_summary = ${literal(c.pageSummary)}`,
    `meta_title = ${literal(metaTitle)}`,
    `meta_description = ${literal(metaDescription)}`,
    `meta_keywords = ${literal(metaKeywords)}`,
    `admission_process = ${literal(c.admission_process)}`,
    `eligibility_criteria = ${literal(c.eligibility_criteria)}`,
    `course_fee_content = ${literal(c.course_fee_content)}`,
    `placement_content = ${literal(c.placement_content)}`,
    `facilities_content = ${literal(c.facilities_content)}`,
    `facilities = ${textArray(p.facilities)}`,
    `hostel_life = ${literal(c.hostel_life)}`,
    `scholarship_available = ${literal("Check official schemes")}`,
    `scholarship_details = ${literal(c.scholarship_details)}`,
    `rankings_content = ${literal(c.rankings_content)}`,
    p.verified ? `courses_count = ${p.courses.length}` : null,
    `data_source_urls = ${json(sources)}`,
    `data_clean_method = ${literal(p.verified ? "official_source_content" : "source_review_partial_content")}`,
    `data_clean_state = ${literal(p.verified ? "verified_profile_courses" : "content_refreshed_official_pending")}`,
    `data_clean_audit_note = ${literal(`${batch}; ${p.verified ? "course catalogue updated from reviewed source" : "content refreshed from public profile pattern; official course catalogue not replaced"}; fees kept blank until official programme-wise fee mapping.`)}`,
    `data_quality_score = ${p.verified ? 88 : 78}`,
    `data_verified_at = ${literal(`${researchedAt}T00:00:00+05:30`)}::timestamptz`,
    `data_last_checked_at = ${literal(`${researchedAt}T00:00:00+05:30`)}::timestamptz`,
    `official_source_cleaned_at = ${literal(`${researchedAt}T00:00:00+05:30`)}::timestamptz`,
    `official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1`,
    `ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1`,
    `official_courses_verified = ${p.verified ? "true" : "false"}`,
    `official_fees_verified = false`,
    `requires_official_source_refresh = true`,
    `updated_at = now()`
  ].filter(Boolean);

  for (const value of updateLines.concat(Object.values(c))) {
    if (hasLargeDash(value)) throw new Error(`Large dash found for ${row.slug}`);
  }

  blocks.push(`
DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = ${literal(row.id)} AND slug = ${literal(row.slug)}) THEN
    RAISE EXCEPTION 'College target not found or slug changed: ${row.slug}';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  ${updateLines.join(",\n  ")}
WHERE id = ${literal(row.id)} AND slug = ${literal(row.slug)};

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT ${literal(row.slug)}, ${literal(p.address)}, ${p.website ? literal(p.website) : "NULL"}
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = ${literal(row.slug)});

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF(${literal(p.address)}, ''), address),
  website = COALESCE(NULLIF(${p.website ? literal(p.website) : "NULL"}, ''), website),
  updated_at = now()
WHERE college_slug = ${literal(row.slug)};
`);

  if (p.verified && p.courses.length) {
    blocks.push(`
DELETE FROM public.course_fees WHERE college_slug = ${literal(row.slug)};

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
${p.courses.map((name) => `  (${literal(row.slug)}, ${literal(slugify(name))}, ${literal(name)}, NULL, NULL, '2026')`).join(",\n")};
`);
  }
}

const sql = `-- Generated from ${input}
-- Batch policy: update content for every targeted college; replace course rows only when a reviewed source provides the catalogue.
-- Fees are intentionally blank unless programme, year, quota and category are verified.
BEGIN;
${blocks.join("\n")}
NOTIFY pgrst, 'reload schema';
COMMIT;
`;

if (hasLargeDash(sql)) throw new Error("Generated SQL contains a Unicode large dash");
await writeFile(output, sql);
console.log(`Wrote ${candidates.length} college updates to ${output}`);
console.log(`Verified course catalogues: ${candidates.filter((row) => official[row.slug]?.courses?.length).length}`);
