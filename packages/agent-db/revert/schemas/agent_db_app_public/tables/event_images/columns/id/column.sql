-- Revert: schemas/agent_db_app_public/tables/event_images/columns/id/column


ALTER TABLE agent_db_app_public.event_images 
  DROP COLUMN id RESTRICT;


