-- Revert: schemas/agent_db_app_public/tables/expenses/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.expenses 
  DISABLE ROW LEVEL SECURITY;


