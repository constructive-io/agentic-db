-- Deploy: schemas/agentic_db_app_public/tables/execution_log/columns/entity_id/alterations/alt0000001132
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".execution_log 
  ALTER COLUMN entity_id SET NOT NULL;

