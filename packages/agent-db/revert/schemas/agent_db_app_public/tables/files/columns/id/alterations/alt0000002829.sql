-- Revert: schemas/agent_db_app_public/tables/files/columns/id/alterations/alt0000002829


ALTER TABLE "agent_db_app_public".files 
  ALTER COLUMN id DROP NOT NULL;


