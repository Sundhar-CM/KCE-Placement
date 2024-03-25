class TestList {
  String testName;
  String testType;
  String testDate;
  int marks;

  TestList({
    required this.testName,
    required this.testType,
    required this.testDate,
    required this.marks,
  });
}

List<TestList> test = [
  TestList(
    testName: 'Data Structures',
    testType: 'Online',
    testDate: '11-02-2024',
    marks: 80,
  ),
  TestList(
    testName: 'Aptitude Test',
    testType: 'Offline',
    testDate: '13-02-2024',
    marks: 87,
  ),
  TestList(
    testName: 'Technical MCQ',
    testType: 'Online',
    testDate: '15-02-2024',
    marks: 94,
  ),
  TestList(
    testName: 'Data Structures',
    testType: 'Online',
    testDate: '22-02-2024',
    marks: 82,
  ),
  TestList(
    testName: 'Aptitude test',
    testType: 'Offline',
    testDate: '25-02-2024',
    marks: 67,
  ),
  TestList(
    testName: 'Data Structures',
    testType: 'Online',
    testDate: '01-03-2024',
    marks: 95,
  ),
  TestList(
    testName: 'Aptitude',
    testType: 'Offline',
    testDate: '05-03-2024',
    marks: 89,
  ),
  TestList(
    testName: 'Data Structures',
    testType: 'Online',
    testDate: '07-03-2024',
    marks: 76,
  ),
  TestList(
    testName: 'Aptitude',
    testType: 'Offline',
    testDate: '09-03-2024',
    marks: 85,
  ),
  TestList(
    testName: 'Technical MCQ',
    testType: 'Online',
    testDate: '15-03-2024',
    marks: 79,
  ),
];
