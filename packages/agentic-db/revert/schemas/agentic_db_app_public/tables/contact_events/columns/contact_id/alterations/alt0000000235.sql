-- Revert: schemas/agentic_db_app_public/tables/contact_events/columns/contact_id/alterations/alt0000000235


ALTER TABLE agentic_db_app_public.contact_events 
  ALTER COLUMN contact_id DROP NOT NULL;


