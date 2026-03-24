-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


GRANT SELECT ON "agentic_db_app_public".emails_chunks TO authenticated;

