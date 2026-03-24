-- Revert: schemas/agentic_db_app_public/tables/rules/columns/agent_id/column


ALTER TABLE "agentic_db_app_public".rules 
  DROP COLUMN agent_id RESTRICT;


