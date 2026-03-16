-- Revert: schemas/agent_db_app_public/tables/expenses/columns/currency/column


ALTER TABLE "agent_db_app_public".expenses 
  DROP COLUMN currency RESTRICT;


