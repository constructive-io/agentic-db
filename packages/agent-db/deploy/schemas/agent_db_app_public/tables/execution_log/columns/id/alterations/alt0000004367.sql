-- Deploy: schemas/agent_db_app_public/tables/execution_log/columns/id/alterations/alt0000004367
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/id/column
-- requires: schemas/agent_db_app_public/tables/sessions/columns/embedding/column


ALTER TABLE "agent_db_app_public".execution_log 
  ALTER COLUMN id SET NOT NULL;

