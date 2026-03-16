-- Revert: schemas/agent_db_app_public/tables/expenses/columns/updated_at/column


ALTER TABLE "agent_db_app_public".expenses 
  DROP COLUMN updated_at RESTRICT;


