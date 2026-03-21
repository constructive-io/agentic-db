-- Revert: schemas/agentic_db_app_public/tables/company_events/columns/event_id/alterations/alt0000003930


ALTER TABLE agentic_db_app_public.company_events 
  ALTER COLUMN event_id DROP NOT NULL;


