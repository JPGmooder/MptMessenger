importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-messaging.js");

firebase.initializeApp({
    apiKey: "AIzaSyAouppfpqxqHAVABXiXxFeTyzcOPscchpc",
    authDomain: "mptmessager.firebaseapp.com",
    databaseURL: "https://mptmessager-default-rtdb.europe-west1.firebasedatabase.app",
    projectId: "mptmessager",
    storageBucket: "mptmessager.appspot.com",
    messagingSenderId: "480000211312",
    appId: "1:480000211312:web:be823dcfd17e18cd24b7b5",
    measurementId: "G-RPY88MKCY5"
});
// Necessary to receive background messages:
const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((m) => {
    console.log("onBackgroundMessage", m);
});