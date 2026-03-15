-- Revert: schemas/agent_db_app_public/tables/event_images/constraints/event_images_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.event_images 
  DROP CONSTRAINT event_images_entity_id_fkey;


