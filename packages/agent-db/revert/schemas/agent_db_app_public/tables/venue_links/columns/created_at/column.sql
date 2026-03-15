-- Revert: schemas/agent_db_app_public/tables/venue_links/columns/created_at/column


ALTER TABLE agent_db_app_public.venue_links 
  DROP COLUMN created_at RESTRICT;


