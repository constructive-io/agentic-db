-- Revert: schemas/agent_db_app_public/tables/events/constraints/events_main_image_id_fkey/constraint


ALTER TABLE "agent_db_app_public".events 
  DROP CONSTRAINT events_main_image_id_fkey;


