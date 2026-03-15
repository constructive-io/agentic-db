-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/entity_id/alterations/alt0000004311
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/sessions/columns/entity_id/column


ALTER TABLE "agent_db_app_public".sessions 
  ALTER COLUMN entity_id SET NOT NULL;

