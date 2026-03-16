-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/url/alterations/alt0000001406


ALTER TABLE "agentic_db_app_public".webhooks 
  ALTER COLUMN url DROP NOT NULL;


