-- Revert: schemas/agentic_db_app_public/tables/agent_rules/columns/agent_id/alterations/alt0000002772


ALTER TABLE "agentic_db_app_public".agent_rules 
  ALTER COLUMN agent_id DROP NOT NULL;


