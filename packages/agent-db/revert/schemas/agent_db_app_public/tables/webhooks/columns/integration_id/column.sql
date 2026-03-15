-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/integration_id/column


ALTER TABLE "agent_db_app_public".webhooks 
  DROP COLUMN integration_id RESTRICT;


