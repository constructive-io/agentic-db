-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/columns/contact_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.expense_contacts 
  ADD COLUMN contact_id uuid;

