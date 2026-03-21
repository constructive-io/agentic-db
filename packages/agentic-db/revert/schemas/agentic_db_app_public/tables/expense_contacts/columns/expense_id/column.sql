-- Revert: schemas/agentic_db_app_public/tables/expense_contacts/columns/expense_id/column


ALTER TABLE agentic_db_app_public.expense_contacts 
  DROP COLUMN expense_id RESTRICT;


