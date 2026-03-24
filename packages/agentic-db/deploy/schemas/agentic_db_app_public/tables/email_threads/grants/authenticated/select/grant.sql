-- Deploy: schemas/agentic_db_app_public/tables/email_threads/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


GRANT SELECT ON "agentic_db_app_public".email_threads TO authenticated;

