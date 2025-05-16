# PickLeTime Infra


## Set up development enviornment locally
Make sure you have [Node.js](http://nodejs.org/).
Follow these steps to get PickLeTime up and running on your local machine:

1. Clone the pickletime-infra repository:
```
git clone <repo-name>
```
2. Run setup-dev.sh
```
chmod +x devsetup.sh
./devsetup.sh
```
3. Install dependencies for each repo
```
cd <repo-name>
npm install
```
4. Configure .env.example and rename to .env
5. Generate Prisma Instance in backend repo
```
npx prisma generate
npx prisma migrate dev --name init
```
6. Start the app in each repo
```
npm run start
```

After executing these commands, your React frontend should now be running on [localhost:5173](http://localhost:5173/). You can visit this page in your web browser to view your front-end user interface.

