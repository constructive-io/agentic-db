-- Deploy: schemas/agent_db_app_public/tables/documents/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/tags/column


ALTER TABLE agent_db_app_public.documents 
  ENABLE ROW LEVEL SECURITY;

