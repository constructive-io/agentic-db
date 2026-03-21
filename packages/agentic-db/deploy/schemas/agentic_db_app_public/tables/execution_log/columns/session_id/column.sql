-- Deploy: schemas/agentic_db_app_public/tables/execution_log/columns/session_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/updated_at/alterations/alt0000002132


ALTER TABLE "agentic_db_app_public".execution_log 
  ADD COLUMN session_id uuid;

