-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/constraints/expense_contacts_expense_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.expense_contacts 
  ADD CONSTRAINT expense_contacts_expense_id_fkey 
    FOREIGN KEY(expense_id) 
    REFERENCES agentic_db_app_public.expenses (id) 
    ON DELETE CASCADE;

