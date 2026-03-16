-- Revert: schemas/agent_db_app_public/tables/expenses/columns/date/column


ALTER TABLE "agent_db_app_public".expenses 
  DROP COLUMN date RESTRICT;


