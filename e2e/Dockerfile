FROM cypress/included:6.1.0 as e2eBuild
WORKDIR /e2e
COPY ./package.json .
RUN npm install
COPY . .

# Run tests
CMD ["npm", "run", "e2e" ]
