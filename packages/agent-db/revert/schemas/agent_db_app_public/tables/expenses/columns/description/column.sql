-- Revert: schemas/agent_db_app_public/tables/expenses/columns/description/column


ALTER TABLE agent_db_app_public.expenses 
  DROP COLUMN description RESTRICT;


