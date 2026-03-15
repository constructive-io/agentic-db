-- Revert: schemas/agent_db_app_public/tables/contact_events/columns/id/alterations/alt0000001020


ALTER TABLE agent_db_app_public.contact_events 
  ALTER COLUMN id DROP NOT NULL;


