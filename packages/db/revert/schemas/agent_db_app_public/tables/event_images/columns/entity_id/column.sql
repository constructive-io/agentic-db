-- Revert: schemas/agent_db_app_public/tables/event_images/columns/entity_id/column


ALTER TABLE "agent_db_app_public".event_images 
  DROP COLUMN entity_id RESTRICT;


