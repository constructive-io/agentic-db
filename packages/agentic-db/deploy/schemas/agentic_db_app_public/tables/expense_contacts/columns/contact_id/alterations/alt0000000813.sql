-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/columns/contact_id/alterations/alt0000000813
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/columns/contact_id/column


ALTER TABLE agentic_db_app_public.expense_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

