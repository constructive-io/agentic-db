-- Revert: schemas/agent_db_app_public/tables/expenses/columns/amount/column


ALTER TABLE agent_db_app_public.expenses 
  DROP COLUMN amount RESTRICT;


