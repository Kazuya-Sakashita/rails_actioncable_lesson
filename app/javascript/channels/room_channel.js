import consumer from "./consumer"


window.addEventListener('load', function() {
  if (!document.getElementById('room')) return false;
  consumer.subscriptions.create({channel: "RoomChannel", room: document.getElementById('room').value}, {
    connected() {
      
    },

    disconnected() {

    },

    received(data) {
      console.log(data);
      const html = `<p>${data.comment.content}</p>`;
      document.getElementById('message').insertAdjacentHTML('beforeend', html);
      
    },
  });
});