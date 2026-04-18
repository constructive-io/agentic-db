-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/columns/prompt_id/alterations/alt0000001336
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/columns/prompt_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.agent_prompts 
  ALTER COLUMN prompt_id SET NOT NULL;

