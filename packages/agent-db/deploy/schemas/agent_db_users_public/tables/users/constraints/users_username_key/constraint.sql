-- Deploy: schemas/agent_db_users_public/tables/users/constraints/users_username_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


ALTER TABLE "agent_db_users_public".users 
  ADD CONSTRAINT users_username_key 
    UNIQUE (username);

