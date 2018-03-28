document.addEventListener("turbolinks:load", function() {
  var logs = document.getElementById("logs");
  if(logs != null){
    App.chat = App.cable.subscriptions.create({
      channel: "ChatChannel",
      room_id : logs.dataset.room_id },{
      connected: function() {
        // Called when the subscription is ready for use on the server
        console.log('connect');
        },
      disconnected: function() {
        // Called when the subscription has been terminated by the server
        console.log('disconnect');
        },
      received: function(data) {
        console.log('received');
        createtextlog(data);
        var content = document.getElementById('content');
        content.value = '';
        var image = document.getElementById('image');
        image.value = '';
        },
    });
    }
});

function createtextlog(data) {
    var logs = document.getElementById("logs");
    var li = document.createElement('li');
    var name=document.createElement('span');
    name.classList.add('name');
    name.appendChild(document.createTextNode(data['name']));
    var content=document.createElement('span');
    content.classList.add('content');
    content.appendChild(document.createTextNode(data['message']));
    li.appendChild(name);
    li.appendChild(content);
    logs.appendChild(li);
}

