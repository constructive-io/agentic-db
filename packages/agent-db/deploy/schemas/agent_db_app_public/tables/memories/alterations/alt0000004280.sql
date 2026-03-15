-- Deploy: schemas/agent_db_app_public/tables/memories/alterations/alt0000004280
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/trigger_concept/column


ALTER TABLE "agent_db_app_public".memories 
  DISABLE ROW LEVEL SECURITY;

