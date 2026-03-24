-- Deploy: schemas/agentic_db_users_public/tables/users/constraints/users_username_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table


ALTER TABLE "agentic_db_users_public".users 
  ADD CONSTRAINT users_username_key 
    UNIQUE (username);

