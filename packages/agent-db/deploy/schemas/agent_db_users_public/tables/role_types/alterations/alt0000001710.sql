-- Deploy: schemas/agent_db_users_public/tables/role_types/alterations/alt0000001710
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/role_types/table


ALTER TABLE "agent_db_users_public".role_types 
  DISABLE ROW LEVEL SECURITY;

