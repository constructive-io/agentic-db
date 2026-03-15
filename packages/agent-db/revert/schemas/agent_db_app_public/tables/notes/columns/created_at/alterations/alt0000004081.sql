-- Revert: schemas/agent_db_app_public/tables/notes/columns/created_at/alterations/alt0000004081


ALTER TABLE "agent_db_app_public".notes 
  ALTER COLUMN created_at DROP NOT NULL;


