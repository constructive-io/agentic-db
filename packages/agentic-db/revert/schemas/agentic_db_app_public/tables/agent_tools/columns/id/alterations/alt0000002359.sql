-- Revert: schemas/agentic_db_app_public/tables/agent_tools/columns/id/alterations/alt0000002359


ALTER TABLE "agentic_db_app_public".agent_tools 
  ALTER COLUMN id DROP NOT NULL;


