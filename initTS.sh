DIR=${pwd}

read -p "Enter Name of Dependencies: " DEPENDENCIES
read -p "Enter Name of dev Dependencies: " DEVDEPENDENCIES

npm init -y
npm i ${DEPENDENCIES}
npm i --save-dev typescript ${DEVDEPENDENCIES}
npx tsc --init

sed -i 's|// "outDir": "./"|  "outDir": "./dist"|' tsconfig.json
sed -i 's|// "rootDir": "./"|  "rootDir": "./src"|' tsconfig.json

mkdir src dist
