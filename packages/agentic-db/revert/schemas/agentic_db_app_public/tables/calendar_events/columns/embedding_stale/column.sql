-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".calendar_events 
  DROP COLUMN embedding_stale RESTRICT;


