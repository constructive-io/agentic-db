-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/event_type/alterations/alt0000004611


ALTER TABLE "agent_db_app_public".webhooks 
  ALTER COLUMN event_type DROP NOT NULL;


