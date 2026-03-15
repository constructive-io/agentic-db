-- Revert: schemas/agent_db_app_public/tables/venue_links/columns/entity_id/column


ALTER TABLE agent_db_app_public.venue_links 
  DROP COLUMN entity_id RESTRICT;


