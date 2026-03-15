-- Revert: schemas/agent_db_app_public/tables/event_links/columns/entity_id/alterations/alt0000000968


ALTER TABLE agent_db_app_public.event_links 
  ALTER COLUMN entity_id DROP NOT NULL;


