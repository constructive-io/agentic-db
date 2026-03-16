-- Revert: schemas/agentic_db_app_public/tables/agent_rules/columns/id/alterations/alt0000001549


ALTER TABLE "agentic_db_app_public".agent_rules 
  ALTER COLUMN id DROP NOT NULL;


