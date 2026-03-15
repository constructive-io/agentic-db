-- Revert: schemas/agent_db_app_public/tables/files/columns/repository_id/alterations/alt0000002846


ALTER TABLE "agent_db_app_public".files 
  ALTER COLUMN repository_id DROP NOT NULL;


