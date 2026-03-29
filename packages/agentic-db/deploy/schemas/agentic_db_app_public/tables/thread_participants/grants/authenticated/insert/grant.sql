-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/policies/auth_del_entity_membership/policy


GRANT INSERT ON agentic_db_app_public.thread_participants TO authenticated;

