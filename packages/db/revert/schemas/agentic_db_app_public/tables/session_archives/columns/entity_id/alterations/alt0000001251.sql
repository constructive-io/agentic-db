-- Revert: schemas/agentic_db_app_public/tables/session_archives/columns/entity_id/alterations/alt0000001251


ALTER TABLE "agentic_db_app_public".session_archives 
  ALTER COLUMN entity_id DROP NOT NULL;


