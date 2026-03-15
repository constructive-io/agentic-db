-- Revert: schemas/agent_db_app_public/tables/event_images/columns/id/alterations/alt0000000998


ALTER TABLE agent_db_app_public.event_images 
  ALTER COLUMN id DROP NOT NULL;


