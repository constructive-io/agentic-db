-- Revert: schemas/agent_db_app_public/tables/expenses/columns/tags/column


ALTER TABLE agent_db_app_public.expenses 
  DROP COLUMN tags RESTRICT;


