-- Deploy: schemas/agentic_db_app_public/tables/execution_log/columns/id/alterations/alt0000002126
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/embedding/column


ALTER TABLE "agentic_db_app_public".execution_log 
  ALTER COLUMN id SET NOT NULL;

