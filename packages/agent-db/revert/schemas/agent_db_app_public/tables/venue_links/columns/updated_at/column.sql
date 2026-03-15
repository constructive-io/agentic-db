-- Revert: schemas/agent_db_app_public/tables/venue_links/columns/updated_at/column


ALTER TABLE agent_db_app_public.venue_links 
  DROP COLUMN updated_at RESTRICT;


