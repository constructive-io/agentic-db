-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


GRANT INSERT ON agentic_db_app_public.runtime_config TO authenticated;

