-- Revert: schemas/agentic_db_app_public/tables/agent_prompts/constraints/agent_prompts_agent_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".agent_prompts 
  DROP CONSTRAINT agent_prompts_agent_id_fkey;


