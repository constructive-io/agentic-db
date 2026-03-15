-- Revert: schemas/agent_db_app_public/tables/session_archives/columns/id/alterations/alt0000004450


ALTER TABLE "agent_db_app_public".session_archives 
  ALTER COLUMN id DROP NOT NULL;


