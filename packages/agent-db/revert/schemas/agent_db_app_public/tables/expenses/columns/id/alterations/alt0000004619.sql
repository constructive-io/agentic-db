-- Revert: schemas/agent_db_app_public/tables/expenses/columns/id/alterations/alt0000004619


ALTER TABLE "agent_db_app_public".expenses 
  ALTER COLUMN id DROP NOT NULL;


