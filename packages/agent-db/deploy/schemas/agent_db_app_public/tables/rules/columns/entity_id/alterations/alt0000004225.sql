-- Deploy: schemas/agent_db_app_public/tables/rules/columns/entity_id/alterations/alt0000004225
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/tasks/columns/embedding/column


ALTER TABLE "agent_db_app_public".rules 
  ALTER COLUMN entity_id SET NOT NULL;

