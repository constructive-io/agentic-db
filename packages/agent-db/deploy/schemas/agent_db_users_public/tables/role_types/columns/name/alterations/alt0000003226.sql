-- Deploy: schemas/agent_db_users_public/tables/role_types/columns/name/alterations/alt0000003226
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/role_types/table
-- requires: schemas/agent_db_users_public/tables/role_types/columns/name/column


ALTER TABLE "agent_db_users_public".role_types 
  ALTER COLUMN name SET NOT NULL;

