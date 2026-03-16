-- Revert: schemas/agentic_db_app_public/tables/agent_tools/columns/id/column


ALTER TABLE "agentic_db_app_public".agent_tools 
  DROP COLUMN id RESTRICT;


