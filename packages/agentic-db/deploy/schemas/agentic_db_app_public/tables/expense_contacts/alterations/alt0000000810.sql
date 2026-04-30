-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/alterations/alt0000000810
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.expense_contacts 
  DISABLE ROW LEVEL SECURITY;

