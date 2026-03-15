-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/url/alterations/alt0000004658


ALTER TABLE "agent_db_app_public".webhooks 
  ALTER COLUMN url DROP NOT NULL;


