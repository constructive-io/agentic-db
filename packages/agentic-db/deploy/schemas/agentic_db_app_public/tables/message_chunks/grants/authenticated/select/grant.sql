-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/embedding/column


GRANT SELECT ON agentic_db_app_public.message_chunks TO authenticated;

