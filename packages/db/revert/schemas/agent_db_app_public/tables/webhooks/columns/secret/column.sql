-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/secret/column


ALTER TABLE "agent_db_app_public".webhooks 
  DROP COLUMN secret RESTRICT;


