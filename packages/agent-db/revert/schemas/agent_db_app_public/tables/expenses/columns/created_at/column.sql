-- Revert: schemas/agent_db_app_public/tables/expenses/columns/created_at/column


ALTER TABLE "agent_db_app_public".expenses 
  DROP COLUMN created_at RESTRICT;


