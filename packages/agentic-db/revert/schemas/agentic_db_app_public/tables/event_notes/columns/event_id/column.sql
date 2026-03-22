-- Revert: schemas/agentic_db_app_public/tables/event_notes/columns/event_id/column


ALTER TABLE "agentic_db_app_public".event_notes 
  DROP COLUMN event_id RESTRICT;


