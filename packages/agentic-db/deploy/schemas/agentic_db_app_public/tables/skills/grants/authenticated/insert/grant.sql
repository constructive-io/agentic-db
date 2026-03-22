-- Deploy: schemas/agentic_db_app_public/tables/skills/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/rules/triggers/rules_embedding_stale_update_tg


GRANT INSERT ON agentic_db_app_public.skills TO authenticated;

