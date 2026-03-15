-- Revert: schemas/agent_db_app_public/tables/agent_rules/columns/entity_id/column


ALTER TABLE "agent_db_app_public".agent_rules 
  DROP COLUMN entity_id RESTRICT;


