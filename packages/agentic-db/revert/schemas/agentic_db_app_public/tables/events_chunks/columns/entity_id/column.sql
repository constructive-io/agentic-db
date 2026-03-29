-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.events_chunks 
  DROP COLUMN entity_id RESTRICT;


