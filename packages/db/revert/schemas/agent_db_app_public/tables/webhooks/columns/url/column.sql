-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/url/column


ALTER TABLE "agent_db_app_public".webhooks 
  DROP COLUMN url RESTRICT;


