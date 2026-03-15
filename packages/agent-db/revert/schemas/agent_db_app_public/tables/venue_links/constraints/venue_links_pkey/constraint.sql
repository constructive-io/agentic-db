-- Revert: schemas/agent_db_app_public/tables/venue_links/constraints/venue_links_pkey/constraint


ALTER TABLE agent_db_app_public.venue_links 
  DROP CONSTRAINT venue_links_pkey;


