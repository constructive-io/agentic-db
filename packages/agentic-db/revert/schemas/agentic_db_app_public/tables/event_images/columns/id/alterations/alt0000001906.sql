-- Revert: schemas/agentic_db_app_public/tables/event_images/columns/id/alterations/alt0000001906


ALTER TABLE "agentic_db_app_public".event_images 
  ALTER COLUMN id DROP NOT NULL;


