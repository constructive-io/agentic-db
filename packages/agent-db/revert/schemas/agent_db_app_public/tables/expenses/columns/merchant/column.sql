-- Revert: schemas/agent_db_app_public/tables/expenses/columns/merchant/column


ALTER TABLE agent_db_app_public.expenses 
  DROP COLUMN merchant RESTRICT;


