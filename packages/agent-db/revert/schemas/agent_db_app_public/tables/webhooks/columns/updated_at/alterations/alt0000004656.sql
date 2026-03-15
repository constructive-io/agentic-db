-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/updated_at/alterations/alt0000004656


ALTER TABLE "agent_db_app_public".webhooks 
  ALTER COLUMN updated_at DROP NOT NULL;


