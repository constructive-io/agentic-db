-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


GRANT DELETE ON agentic_db_app_public.runtime_schedules TO authenticated;

