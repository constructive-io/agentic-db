-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/alterations/alt0000000718
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/indexes/skill_tools_tool_definition_id_idx


COMMENT ON TABLE agentic_db_app_public.thread_participants IS E'@behavior +manyToMany';

