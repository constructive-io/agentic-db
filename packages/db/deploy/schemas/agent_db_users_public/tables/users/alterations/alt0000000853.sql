-- Deploy: schemas/agent_db_users_public/tables/users/alterations/alt0000000853
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


ALTER TABLE "agent_db_users_public".users 
  DISABLE ROW LEVEL SECURITY;

