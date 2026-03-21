-- Revert: schemas/agentic_db_app_public/tables/contact_events/columns/id/column


ALTER TABLE agentic_db_app_public.contact_events 
  DROP COLUMN id RESTRICT;


