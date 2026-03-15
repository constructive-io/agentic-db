-- Revert: schemas/agent_db_app_public/tables/venues/constraints/venues_main_image_id_fkey/constraint


ALTER TABLE agent_db_app_public.venues 
  DROP CONSTRAINT venues_main_image_id_fkey;


