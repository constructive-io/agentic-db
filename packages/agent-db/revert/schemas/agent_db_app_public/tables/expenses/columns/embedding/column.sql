-- Revert: schemas/agent_db_app_public/tables/expenses/columns/embedding/column


ALTER TABLE agent_db_app_public.expenses 
  DROP COLUMN embedding RESTRICT;


