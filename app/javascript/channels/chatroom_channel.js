import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainers = document.querySelectorAll('.messages');
  if (messagesContainers.length > 0) {
    messagesContainers.forEach((messagesContainer)=>{
      const id = messagesContainer.dataset.chatroomId;

      consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
        received(data) {
          messagesContainer.insertAdjacentHTML("beforeend", data) // called when data is broadcast in the cable
        },
      });
    })
  }
}

export { initChatroomCable };
