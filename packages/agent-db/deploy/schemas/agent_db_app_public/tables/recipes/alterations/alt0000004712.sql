-- Deploy: schemas/agent_db_app_public/tables/recipes/alterations/alt0000004712
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/notifications/columns/source_entity_type/column


ALTER TABLE "agent_db_app_public".recipes 
  DISABLE ROW LEVEL SECURITY;

