-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/columns/expense_id/alterations/alt0000001331
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/columns/expense_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.expense_contacts 
  ALTER COLUMN expense_id SET NOT NULL;

