-- Deploy: schemas/agentic_db_app_public/tables/session_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/embedding/column


GRANT SELECT ON agentic_db_app_public.session_chunks TO authenticated;

