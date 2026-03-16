-- Deploy: schemas/agent_db_users_public/tables/users/columns/created_at/alterations/alt0000000864
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_users_public/tables/users/columns/created_at/column


ALTER TABLE "agent_db_users_public".users 
  ALTER COLUMN created_at SET DEFAULT now();

