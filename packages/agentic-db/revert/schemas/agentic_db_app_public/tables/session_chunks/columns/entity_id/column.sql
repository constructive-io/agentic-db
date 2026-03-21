-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".session_chunks 
  DROP COLUMN entity_id RESTRICT;


