-- Revert: schemas/agent_db_app_public/tables/agent_prompts/columns/id/column


ALTER TABLE "agent_db_app_public".agent_prompts 
  DROP COLUMN id RESTRICT;


