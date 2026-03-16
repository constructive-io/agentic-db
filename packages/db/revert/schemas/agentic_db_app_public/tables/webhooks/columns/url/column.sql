-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/url/column


ALTER TABLE "agentic_db_app_public".webhooks 
  DROP COLUMN url RESTRICT;


