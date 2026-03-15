-- Revert: schemas/agent_db_app_public/tables/venue_images/columns/venue_id/column


ALTER TABLE agent_db_app_public.venue_images 
  DROP COLUMN venue_id RESTRICT;


