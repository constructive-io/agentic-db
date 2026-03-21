-- Deploy: schemas/agentic_db_app_public/tables/agents/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/indexes/skill_executions_started_at_idx


GRANT SELECT ON agentic_db_app_public.agents TO authenticated;

