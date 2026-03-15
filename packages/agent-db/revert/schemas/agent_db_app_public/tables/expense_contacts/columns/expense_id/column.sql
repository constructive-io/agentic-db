-- Revert: schemas/agent_db_app_public/tables/expense_contacts/columns/expense_id/column


ALTER TABLE agent_db_app_public.expense_contacts 
  DROP COLUMN expense_id RESTRICT;


