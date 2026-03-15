-- Revert: schemas/agent_db_app_public/tables/notes/columns/content/alterations/alt0000002617


ALTER TABLE "agent_db_app_public".notes 
  ALTER COLUMN content DROP NOT NULL;


