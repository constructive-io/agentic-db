-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/entity_id/alterations/alt0000002253


ALTER TABLE "agent_db_app_public".webhooks 
  ALTER COLUMN entity_id DROP NOT NULL;


