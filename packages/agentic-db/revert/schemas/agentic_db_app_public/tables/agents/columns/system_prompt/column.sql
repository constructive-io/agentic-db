-- Revert: schemas/agentic_db_app_public/tables/agents/columns/system_prompt/column


ALTER TABLE agentic_db_app_public.agents 
  DROP COLUMN system_prompt RESTRICT;


