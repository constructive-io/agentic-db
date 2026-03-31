-- Revert: schemas/agentic_db_app_public/tables/contact_events/columns/entity_id/alterations/alt0000003308


ALTER TABLE agentic_db_app_public.contact_events 
  ALTER COLUMN entity_id DROP NOT NULL;


