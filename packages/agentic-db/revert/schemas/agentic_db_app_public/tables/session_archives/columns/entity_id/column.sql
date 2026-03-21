-- Revert: schemas/agentic_db_app_public/tables/session_archives/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".session_archives 
  DROP COLUMN entity_id RESTRICT;


