-- Deploy: schemas/agentic_db_app_public/tables/execution_log/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/embedding/column


ALTER TABLE agentic_db_app_public.execution_log 
  ENABLE ROW LEVEL SECURITY;

