-- Revert: schemas/agent_db_app_public/tables/expenses/columns/id/alterations/alt0000004571


ALTER TABLE "agent_db_app_public".expenses 
  ALTER COLUMN id DROP NOT NULL;


