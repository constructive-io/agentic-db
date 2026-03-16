-- Revert: schemas/agent_db_app_public/tables/prompts/columns/id/column


ALTER TABLE "agent_db_app_public".prompts 
  DROP COLUMN id RESTRICT;


