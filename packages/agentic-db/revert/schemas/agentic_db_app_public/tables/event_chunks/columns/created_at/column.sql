-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.event_chunks 
  DROP COLUMN created_at RESTRICT;


