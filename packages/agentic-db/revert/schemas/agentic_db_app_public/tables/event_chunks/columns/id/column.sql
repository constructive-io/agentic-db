-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/id/column


ALTER TABLE agentic_db_app_public.event_chunks 
  DROP COLUMN id RESTRICT;


