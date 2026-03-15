-- Deploy: schemas/agent_db_app_public/tables/memories/columns/id/alterations/alt0000004281
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/id/column
-- requires: schemas/agent_db_app_public/tables/rules/columns/trigger_concept/column


ALTER TABLE "agent_db_app_public".memories 
  ALTER COLUMN id SET NOT NULL;

