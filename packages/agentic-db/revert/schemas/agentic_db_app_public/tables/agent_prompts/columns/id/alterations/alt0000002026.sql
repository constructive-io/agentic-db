-- Revert: schemas/agentic_db_app_public/tables/agent_prompts/columns/id/alterations/alt0000002026


ALTER TABLE "agentic_db_app_public".agent_prompts 
  ALTER COLUMN id DROP NOT NULL;


