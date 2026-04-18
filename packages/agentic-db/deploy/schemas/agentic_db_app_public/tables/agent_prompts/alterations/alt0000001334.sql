-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/alterations/alt0000001334
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


COMMENT ON TABLE agentic_db_app_public.agent_prompts IS E'@behavior +manyToMany';

