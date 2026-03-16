-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/entity_id/column


ALTER TABLE "agent_db_app_public".webhooks 
  DROP COLUMN entity_id RESTRICT;


