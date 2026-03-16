-- Deploy: schemas/agent_db_users_public/tables/users/constraints/users_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


ALTER TABLE "agent_db_users_public".users 
  ADD CONSTRAINT users_pkey PRIMARY KEY (id);

