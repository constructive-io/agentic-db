-- Revert: schemas/agentic_db_app_public/tables/agent_rules/columns/entity_id/alterations/alt0000001551


ALTER TABLE "agentic_db_app_public".agent_rules 
  ALTER COLUMN entity_id DROP NOT NULL;


