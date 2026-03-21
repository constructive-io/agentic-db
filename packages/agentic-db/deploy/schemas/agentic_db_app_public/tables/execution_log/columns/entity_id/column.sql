-- Deploy: schemas/agentic_db_app_public/tables/execution_log/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/embedding/column


ALTER TABLE agentic_db_app_public.execution_log 
  ADD COLUMN entity_id uuid;

