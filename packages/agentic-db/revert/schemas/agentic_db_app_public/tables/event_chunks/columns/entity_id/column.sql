-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.event_chunks 
  DROP COLUMN entity_id RESTRICT;


