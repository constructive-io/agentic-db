-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table


COMMENT ON TABLE agentic_db_app_public.agent_prompts IS E'@behavior +manyToMany';

