-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/created_at/alterations/alt0000002254


ALTER TABLE "agent_db_app_public".webhooks 
  ALTER COLUMN created_at DROP NOT NULL;


