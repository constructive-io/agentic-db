-- Deploy: schemas/agent_db_app_public/tables/workflows/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/embedding/column


ALTER TABLE agent_db_app_public.workflows 
  ENABLE ROW LEVEL SECURITY;

