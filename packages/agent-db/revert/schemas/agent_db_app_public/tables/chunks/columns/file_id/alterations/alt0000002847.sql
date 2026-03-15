-- Revert: schemas/agent_db_app_public/tables/chunks/columns/file_id/alterations/alt0000002847


ALTER TABLE "agent_db_app_public".chunks 
  ALTER COLUMN file_id DROP NOT NULL;


