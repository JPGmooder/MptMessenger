import 'package:google_fonts/google_fonts.dart';

//* AGORA
const String agoraAppId = "858895badcc34ed1b9216766de582ee2";
const String agoraPrimaryCertificate = "2638a8b5ebce496b9ea18ac2a6b77437";
const String agoraSecondaryCertificate = "a4b0fab950b842b0ba627ddba7dcfeed";
const String agoraBaseAdress = "https://mptmessenger.herokuapp.com";

//* ResizeImages
const String urlToGetImage = "https://ik.imagekit.io/jpgmooder/";

//* Specific strings
const String _animationPath = "lib/asset/animations/";
const String imagesPath = "lib/asset/images/";

String mainFontFamaly = GoogleFonts.indieFlower().fontFamily!;
const String mptTitle = "MPT Messenger";
const String teddyPath = _animationPath + "animated_login_screen.riv";
const String notfoundPath = _animationPath + "404_notfound_page.riv";
const String loadingPath = _animationPath + "loading.riv";
const String downloadFilePath = _animationPath + "files_downloader.riv";
const String mptlogoPath = imagesPath + "logompt.png";
const String microsoftlogoPath = imagesPath + "logomicrosoft.png";
const List<String> supportedExtensions = [
  "doc",
  "html",
  "jpeg",
  "mov",
  "mp3",
  "mp4",
  "pdf",
  "ppt",
  "rar",
  "txt",
  "wav",
  "xls",
  "zip"
];
// const String doclogoPath = _imagesPath + "doc.png";
// const String htmllogoPath = _imagesPath +"html.png";
// const String jpeglogoPath = _imagesPath +"jpeg.png";
// const String movlogoPath = _imagesPath + "mov.png";
// const String mp3logoPath = _imagesPath + "mp3.png";
// const String mp4logoPath = _imagesPath + "mp4.png";
// const String pdflogoPath = _imagesPath + "pdf.png";
// const String pptlogoPath = _imagesPath + "ppt.png";
// const String rarlogoPath = _imagesPath + "rar.png";
// const String txtlogoPath = _imagesPath + "txt.png";
// const String wavlogoPath = _imagesPath + "wav.png";
// const String xlslogoPath = _imagesPath + "xls.png";
// const String ziplogoPath = _imagesPath + "zip.png";

const String emailRegex = r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)";
const String passwordRegex = r"/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$/";
const String imageRegex = r"([/|.|\w|\s|-])*\.(?:jpg|gif|png|jpeg)";

//* Sign by buttons strings
const String signByMptTitle = "Sign by MPT";
const String signByMicrosoftTitle = "Sign by Microsoft";

//*** FIREBASE
//* Firestore
enum messageTypes {
  Default,
  Answer,
  System,
  Voice,
  Forward,
}

const String usersDocumentPath = "Users";
const String messageTypesCollectionPath = "MessageTypes";

const String rolesDocumentPath = "Roles";
const String statusDocumentPath = "Statuses";
const String genderDocumentPath = "Gender";
const String onlineCollectionPath = "OnlineTypes";
const String chatCollectionPath = "Chats";
//*Firestorage
const String usersStoragePath = "Users";
const String systemStoragePath = "System";
const String chatStoragePath = "Chat";
const String chatMessagesPath = "ChatMessages";
const String defaulBucketPath =
    "https://firebasestorage.googleapis.com/v0/b/mptmessager.appspot.com";
//* Shared preferences
const String emailKey = "Email";
const String passwordKey = "Password";
const String defaultDirectoryPath = "DefaultMessenger";

//* Sign strings
const String login = "Login";
const String password = "Password";
const String repeatPassword = "Repeat password";
const String emailIsEmpty = "Enter email first";
const String passwordIsEmpty = "Enter password first";
const String notValidEmail = "Invalid Email, please try again";
const String passwordEmail =
    "Password does not look like a valid, please try again";
const String passwordDidntMatches = "Entered passwordes didnt matches";
const List<String> stayMessages = [
  "connected and connect with people you know.",
  "informed and tell news to your friends.",
  "with old friends and find new ones.",
  "effective in teamwork."
]; // TODO Дополнить списочек

//* ChatWidget
const String textKey = "message";

//* DownPlankChat
const String oneForwardedMessagesText = "Forwarded message";
const String oneForwardedMessagesCountText = "message";
const String mulForwardedMessagesText = "Forwarded messages";
const String mulForwardedMessagesCountText = "messages";

//* AdditionalInfoScreen
const String ADDIFSName = "Name";
const String ADDIFSLastName = "Last name";
