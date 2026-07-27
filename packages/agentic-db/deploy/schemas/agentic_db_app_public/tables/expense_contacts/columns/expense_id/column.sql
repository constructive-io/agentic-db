-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/columns/expense_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table


ALTER TABLE agentic_db_app_public.expense_contacts 
  ADD COLUMN expense_id uuid;

