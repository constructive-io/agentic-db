-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/event_type/alterations/alt0000002519


ALTER TABLE "agentic_db_app_public".webhooks 
  ALTER COLUMN event_type DROP NOT NULL;


