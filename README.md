# Messages API
The application implements an excercise to build a simple API for exchanging messages.

Two endpoints are available:
- `POST /messages` accepts JSON `{"body": "some string"}` and creates a message and returns JSON `{"link": "http://localhost:3000/messages/58"}`;
- `GET /messages/:id` returns JSON `{"body": "Some text here"}` if messages is shown for the first time and returns JSON `{"info": "You already requested this message"}` if message has been shown already;
