-- Deploy: schemas/agent_db_users_public/tables/role_types/columns/id/alterations/alt0000003177
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/role_types/table
-- requires: schemas/agent_db_users_public/tables/role_types/columns/id/column


ALTER TABLE "agent_db_users_public".role_types 
  ALTER COLUMN id SET NOT NULL;

