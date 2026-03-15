-- Revert: schemas/agent_db_app_public/tables/expense_contacts/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.expense_contacts 
  DISABLE ROW LEVEL SECURITY;


