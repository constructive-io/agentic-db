-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


GRANT SELECT ON agentic_db_app_public.runtime_events TO authenticated;

