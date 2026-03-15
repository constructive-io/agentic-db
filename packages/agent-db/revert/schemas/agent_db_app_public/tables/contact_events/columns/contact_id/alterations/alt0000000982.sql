-- Revert: schemas/agent_db_app_public/tables/contact_events/columns/contact_id/alterations/alt0000000982


ALTER TABLE agent_db_app_public.contact_events 
  ALTER COLUMN contact_id DROP NOT NULL;


