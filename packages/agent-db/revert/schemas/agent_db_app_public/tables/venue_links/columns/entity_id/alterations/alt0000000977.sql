-- Revert: schemas/agent_db_app_public/tables/venue_links/columns/entity_id/alterations/alt0000000977


ALTER TABLE agent_db_app_public.venue_links 
  ALTER COLUMN entity_id DROP NOT NULL;


