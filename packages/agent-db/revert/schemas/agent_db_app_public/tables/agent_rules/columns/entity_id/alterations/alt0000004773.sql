-- Revert: schemas/agent_db_app_public/tables/agent_rules/columns/entity_id/alterations/alt0000004773


ALTER TABLE "agent_db_app_public".agent_rules 
  ALTER COLUMN entity_id DROP NOT NULL;


