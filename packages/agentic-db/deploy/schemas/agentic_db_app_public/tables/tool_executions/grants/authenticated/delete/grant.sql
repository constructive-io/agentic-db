-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


GRANT DELETE ON agentic_db_app_public.tool_executions TO authenticated;

