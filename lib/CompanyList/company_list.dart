class CompanyList {
  String companyName;
  String companyType;
  String companyDescription;
  String companyURL;
  String companyImage;

  CompanyList(
      {required this.companyName,
      required this.companyType,
      required this.companyDescription,
      required this.companyURL,
      required this.companyImage}
  );
}

List<CompanyList> company = [
  CompanyList(
      companyName: 'Tata Consultancy Services',
      companyType: 'Service',
      companyDescription:
          'Tata Consultancy Services is an IT services, consulting and business solutions organization that has been partnering with many of the world’s largest businesses for the past 50 years. We believe innovation and collective knowledge can transform all our futures with greater purpose.',
      companyURL: 'https://www.tcs.com/',
      companyImage: 'company/tcs.jpeg'),
  CompanyList(
      companyName: 'Infosys',
      companyType: 'Service',
      companyDescription:
          'Infosys is a global leader in next-generation digital services and consulting. We enable clients in more than 56 countries to navigate their digital transformation.',
      companyURL: 'https://www.infosys.com/',
      companyImage: 'company/infosys.jpeg'),
  CompanyList(
      companyName: 'Wipro',
      companyType: 'Service',
      companyDescription:
          'Wipro Limited is a leading technology services and consulting company focused on building innovative solutions that address clients’ most complex digital transformation needs.',
      companyURL: 'https://www.wipro.com/',
      companyImage: 'company/wipro.png'),
  CompanyList(
      companyName: 'Zoho',
      companyType: 'Service',
      companyDescription:
          'Zoho Corporation is an Indian multinational technology company that makes computer software and web-based business tools. It is best known for the online office suite offering Zoho Office Suite.',
      companyURL: 'https://www.zoho.com/',
      companyImage: 'company/zoho.png'),
  CompanyList(
      companyName: 'Tech Mahindra',
      companyType: 'Service',
      companyDescription:
          'Tech Mahindra offers innovative and customer-centric digital experiences, enabling enterprises, associates, and society to Rise for a more equal world, future readiness, and value creation. It is a USD 6.5+ billion organization with 146,000+ professionals across 90 countries helping 1250+ global customers, including Fortune 500 companies. ',
      companyURL: 'https://www.techmahindra.com/',
      companyImage: 'company/techMahindra.png'),
  CompanyList(
      companyName: 'Moonraft',
      companyType: 'Service',
      companyDescription:
          'UST Evolve offers human-centered strategic design services to create rich, holistic experiences that delight your users and elevate your business.',
      companyURL: 'https://moonraft.com/',
      companyImage: 'company/moonraft.png'),
  CompanyList(
      companyName: 'Trilogy',
      companyType: 'Product',
      companyDescription:
          'Trilogy is a comprehensive business platform, driving hundreds of software companies to become more efficient and profitable by streamlining business functions from development to product management and R&D – managed by the top 1% of global tech talent worldwide.',
      companyURL: 'https://https://trilogy.com/.com/',
      companyImage: 'company/triology.png'),
  CompanyList(
      companyName: 'Accenture',
      companyType: 'Service',
      companyDescription:
          'Accenture is a global professional services company with leading capabilities in digital, cloud and security. Combining unmatched experience and specialized skills across more than 40 industries, we offer Strategy and Consulting, Interactive, Technology and Operations services',
      companyURL: 'https://www.accenture.com/',
      companyImage: 'company/accenture.png'),
  CompanyList(
      companyName: 'Ducen It',
      companyType: 'Service',
      companyDescription:
          'Ducen is a trusted technology solutions provider and systems integrator that empowers organizations through innovative data solutions, data platform, and a comprehensive services portfolio covering systems integration, data management, application development, and cybersecurity to help clients adapt to the evolving technological landscape.',
      companyURL: 'https://ducenit.com/',
      companyImage: 'company/ducen.png'),
  CompanyList(
      companyName: 'Kaar Technologies',
      companyType: 'Service',
      companyDescription:
          'Kaar Technologies represents how thousands of Digital Transformation Experts likeRaindrops descend from the Rain Cloud that is Kaar Tech to nurture business transformation, growth, and profitability for enterprises of all sizes in North America, Europe, and the Middle East.',
      companyURL: 'https://www.kaartech.com/',
      companyImage: 'company/kaar.jpeg'),
  CompanyList(
      companyName: 'Tata Elxsi',
      companyType: 'Service',
      companyDescription:
          'Tata Elxsi is amongst the world’s leading providers of design and technology services across industries including Automotive, Broadcast, Communications, Healthcare, and Transportation.',
      companyURL: 'https://www.tataelxsi.com/',
      companyImage: 'company/tataElxsi.png'),
];
