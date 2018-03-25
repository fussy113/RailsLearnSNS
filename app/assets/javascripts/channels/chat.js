document.addEventListener("turbolinks:load", function() {
    var logs = document.getElementById("logs");
    if(logs != null){
        App.chat = App.cable.subscriptions.create({
            channel: "ChatChannel",
            room_id : logs.dataset.room_id },{
            connected: function() {
                // Called when the subscription is ready for use on the server
            },

            disconnected: function() {
                // Called when the subscription has been terminated by the server
            },

            received: function(data) {
                logs.append(data['message']);
            },

            speak: function(message) {
                return this.perform('speak', {
                    message: message
                });
            },

        });

    }
})

