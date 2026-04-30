-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/columns/prompt_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.agent_prompts 
  ADD COLUMN prompt_id uuid;

