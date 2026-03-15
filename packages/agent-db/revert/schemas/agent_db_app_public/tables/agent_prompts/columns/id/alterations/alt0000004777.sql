-- Revert: schemas/agent_db_app_public/tables/agent_prompts/columns/id/alterations/alt0000004777


ALTER TABLE "agent_db_app_public".agent_prompts 
  ALTER COLUMN id DROP NOT NULL;


