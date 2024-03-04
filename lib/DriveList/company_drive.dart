class CompanyDrive {
  String companyName;
  List<String> roundDes;
  int rounds;
  String companyImage;
  String role;

  CompanyDrive({
    required this.rounds,
    required this.roundDes,
    required this.companyName,
    required this.companyImage,
    required this.role
  });
}

List<CompanyDrive> drive = [
  CompanyDrive(
    rounds: 3,
    roundDes: ['Aptitude Assesment','Technical HR','General HR'], 
    companyName: 'Wipro', 
    companyImage: 'company/wipro.png', 
    role: 'Software Engineer'
  ),
  CompanyDrive(
    rounds: 5,
    roundDes: ['Apitude Assesment', 'Basic Pogramming','Advanced programming','Technical HR','General HR'], 
    companyName: 'Zoho', 
    companyImage: 'company/zoho.png', 
    role: 'Java Developer'
  ),
  CompanyDrive(
    rounds: 4,
    roundDes: ['Apitude Assesment','Technical HR','Managerial HR','General HR'], 
    companyName: 'Tata Consultancy Services', 
    companyImage: 'company/tcs.jpeg', 
    role: 'Devops Engineer'
  ),
  CompanyDrive(
    rounds: 3,
    roundDes: ['Aptitude Assesment','Technical HR','General HR'], 
    companyName: 'Accenture', 
    companyImage: 'company/accenture.png', 
    role: 'Software Engineer'
  ),
  CompanyDrive(
    roundDes: ['Aptitude Assesment','Technical HR','General HR'], 
    rounds: 3,
    companyName: 'Tata Elxsi', 
    companyImage: 'company/tataElxsi.png', 
    role: 'SDE Engineer'
  ),
];
