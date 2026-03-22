-- Revert: schemas/agentic_db_app_public/tables/event_links/columns/entity_id/column


ALTER TABLE agentic_db_app_public.event_links 
  DROP COLUMN entity_id RESTRICT;


