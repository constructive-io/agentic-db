-- Deploy: schemas/agentic_db_app_public/tables/contact_notes/alterations/alt0000013632
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_notes/table
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/indexes/agent_prompts_prompt_id_idx


COMMENT ON TABLE agentic_db_app_public.contact_notes IS E'@behavior +manyToMany';

