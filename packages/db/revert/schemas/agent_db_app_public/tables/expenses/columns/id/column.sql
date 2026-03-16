-- Revert: schemas/agent_db_app_public/tables/expenses/columns/id/column


ALTER TABLE "agent_db_app_public".expenses 
  DROP COLUMN id RESTRICT;


