-- Revert: schemas/agent_db_app_public/tables/chunks/columns/id/alterations/alt0000004572


ALTER TABLE "agent_db_app_public".chunks 
  ALTER COLUMN id DROP NOT NULL;


