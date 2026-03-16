-- Revert: schemas/agent_db_app_public/tables/session_archives/columns/updated_at/alterations/alt0000002106


ALTER TABLE "agent_db_app_public".session_archives 
  ALTER COLUMN updated_at DROP NOT NULL;


