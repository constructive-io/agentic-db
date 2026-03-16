-- Revert: schemas/agent_db_app_public/tables/session_archives/columns/session_id/alterations/alt0000002108


ALTER TABLE "agent_db_app_public".session_archives 
  ALTER COLUMN session_id DROP NOT NULL;


