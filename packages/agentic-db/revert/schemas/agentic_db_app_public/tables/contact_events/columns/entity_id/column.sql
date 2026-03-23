-- Revert: schemas/agentic_db_app_public/tables/contact_events/columns/entity_id/column


ALTER TABLE agentic_db_app_public.contact_events 
  DROP COLUMN entity_id RESTRICT;


