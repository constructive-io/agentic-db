-- Deploy: schemas/agentic_db_app_public/tables/documents/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/tags/column


ALTER TABLE agentic_db_app_public.documents 
  ENABLE ROW LEVEL SECURITY;

