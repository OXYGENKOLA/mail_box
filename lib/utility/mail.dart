class Email {
  final String senderImage;
  final String senderName;
  final String title;
  final String message;
  final String time;

  const Email({
    required this.senderImage,
    required this.senderName,
    required this.title,
    required this.message,
    required this.time,
  });
}

List _emails = const [
  Email(
      senderImage: 'mylogo.png',
      senderName: 'Awwal',
      title: 'You are doing well',
      message: 'Keep learning',
      time: '12:00am'),
  Email(
      senderImage: 'mylogo.png',
      senderName: 'Awwal',
      title: 'You are doing well',
      message: 'Keep learning',
      time: '12:00am'),
  Email(
      senderImage: 'mylogo.png',
      senderName: 'Awwal',
      title: 'You are doing well',
      message: 'Keep learning',
      time: '12:00am'),
  Email(
      senderImage: 'mylogo.png',
      senderName: 'Awwal',
      title: 'You are doing well',
      message: 'Keep learning',
      time: '12:00am'),
  Email(
      senderImage: 'mylogo.png',
      senderName: 'Awwal',
      title: 'You are doing well',
      message: 'Keep learning',
      time: '12:00am'),
  Email(
      senderImage: 'mylogo.png',
      senderName: 'Awwal',
      title: 'You are doing well',
      message:
          'Keep learning',
      time: '12:00am'),
  Email(
      senderImage: 'mylogo.png',
      senderName: 'Awwal',
      title: 'You are doing well',
      message:
          'Keep learning',
      time: '12:00am'),
  Email(
      senderImage: 'mylogo.png',
      senderName: 'Awwal',
      title: 'You are doing well',
      message:
          'Keep learning',
      time: '12:00am'),
  Email(
      senderImage: 'mylogo.png',
      senderName: 'Awwal',
      title: 'You are doing well',
      message:
          'Keep learning',
      time: '12:00am'),
  Email(
      senderImage: 'mylogo.png',
      senderName: 'Awwal',
      title: 'You are doing well',
      message:
          'Keep learning',
      time: '12:00am'),
  Email(
      senderImage: 'mylogo.png',
      senderName: 'Awwal',
      title: 'You are doing well',
      message:
          'Keep learning',
      time: '12:00am'),
];

List getEmails() {
  return _emails;
}
