-- Revert: schemas/agent_db_app_public/tables/event_images/columns/event_id/alterations/alt0000004214


ALTER TABLE "agent_db_app_public".event_images 
  ALTER COLUMN event_id DROP NOT NULL;


