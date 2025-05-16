# PickLeTime Infra


## Set up development environment locally
Make sure you have [Node.js](http://nodejs.org/).
Follow these steps to get PickLeTime up and running on your local machine:

1. Create root directory
```
mkdir PickLe-Time
cd PickLe-Time
```
2. Clone the pickletime-infra repository:
```
git clone <repo-name>
```
3. Run setup-dev.sh
```
chmod +x setup-dev.sh
./setup-dev.sh
```
4. Install dependencies for each repo
```
cd <repo-name>
npm install
```
5. Configure .env.example and rename to .env
6. Generate Prisma Instance in backend repo
```
npx prisma generate
npx prisma migrate dev --name init
```
7. Run Postgres container from docker-compose.yml
```
docker compose up -d postgres
```
8. Start the app in each repo
```
npm run start
```

After executing these commands, your frontend should now be running on [localhost:5173](http://localhost:5173/). You can visit this page in your web browser to view your front-end user interface.

