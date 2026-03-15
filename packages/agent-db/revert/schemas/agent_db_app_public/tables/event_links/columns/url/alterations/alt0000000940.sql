-- Revert: schemas/agent_db_app_public/tables/event_links/columns/url/alterations/alt0000000940


ALTER TABLE agent_db_app_public.event_links 
  ALTER COLUMN url DROP NOT NULL;


