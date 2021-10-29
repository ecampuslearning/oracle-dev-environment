Oracle dev environment
---

The goal of this repository is to prototype and demonstrate how a local development environment using Oracle DB could work.

Features to demonstrate:
- bring infrastructure online
- create schema and test data
- execute commands against the database
- query and assert against the database
- developer interactive access


## How to use

Initialise:

1. Bring up infrastructure: `make`
2. Connect to container: `make connect`

Run scripts:

- Create schema: `sqlplus system/oracle @./scripts/create.sql`
- Add data: `sqlplus system/oracle @./scripts/data.sql`
- Query: `sqlplus system/oracle @./scripts/query.sql`

Interact:

- Connect to database: `sqlplus system/oracle`
