-- Revert: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".calendar_event_chunks 
  DROP COLUMN content RESTRICT;


