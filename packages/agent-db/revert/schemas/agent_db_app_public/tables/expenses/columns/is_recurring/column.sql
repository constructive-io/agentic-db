-- Revert: schemas/agent_db_app_public/tables/expenses/columns/is_recurring/column


ALTER TABLE agent_db_app_public.expenses 
  DROP COLUMN is_recurring RESTRICT;


