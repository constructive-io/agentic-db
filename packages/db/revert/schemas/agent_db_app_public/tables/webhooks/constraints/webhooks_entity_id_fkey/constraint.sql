-- Revert: schemas/agent_db_app_public/tables/webhooks/constraints/webhooks_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".webhooks 
  DROP CONSTRAINT webhooks_entity_id_fkey;


