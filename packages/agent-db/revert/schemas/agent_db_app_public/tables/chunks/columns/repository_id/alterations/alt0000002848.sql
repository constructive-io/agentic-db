-- Revert: schemas/agent_db_app_public/tables/chunks/columns/repository_id/alterations/alt0000002848


ALTER TABLE "agent_db_app_public".chunks 
  ALTER COLUMN repository_id DROP NOT NULL;


