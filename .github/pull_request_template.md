## 📌 Summary

<!-- A brief summary of what this PR does -->

e.g. Added `/users` endpoint to fetch user data from the database.

---

## 🔍 Related Issues / Tickets

<!-- Link any related issues, feature requests, or bug reports -->

Closes #42

---

## 📂 What’s Changed (in the back end)

<!-- High-level bullet points of major changes -->

- Added new controller: `UserController.ts`
- Integrated route: `GET /api/users`
- Added service layer for user DB interactions
- Wrote unit tests for controller and service

### How do these changes relate to the front end?

- 1
- 2
- 3
- 4

---

## 🧪 How to Test

<!-- Steps to test this PR locally -->

1. Pull this branch
2. Run `npm install`
3. Run `npm run dev` to start the server
4. Make a `GET` request to `http://localhost:3000/api/users`
5. Run tests using `npm test`

---

## ✅ Checklist

- [ ] Code compiles and server runs
- [ ] Unit and integration tests pass
- [ ] API contract matches the documentation
- [ ] Error handling is appropriate
- [ ] Logging is consistent and secure
- [ ] No hardcoded secrets or credentials
- [ ] Peer-reviewed

---

## 🧠 Notes for Reviewers

<!-- Optional: Anything reviewers should pay close attention to -->

e.g. Pay attention to the database query performance in `UserService.ts`.
