-- Deploy: schemas/agent_db_app_public/tables/execution_log/columns/entity_id/alterations/alt0000002775
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/entity_id/column


ALTER TABLE "agent_db_app_public".execution_log 
  ALTER COLUMN entity_id SET NOT NULL;

