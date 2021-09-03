// @ts-check
"use strict";

let ws;

window.addEventListener("DOMContentLoaded", () => {
  ws = new WebSocket(`ws://localhost:3000/ws`);
  ws.addEventListener("open", onConnectionOpen);
  ws.addEventListener("open", onMessageReceived);
});

function onConnectionOpen() {
  console.log(`Connection Opened`);
}

/**
 *
 * @param {Event} event
 */
function onMessageReceived(event) {
  console.log(`Message Received`, event);
}
