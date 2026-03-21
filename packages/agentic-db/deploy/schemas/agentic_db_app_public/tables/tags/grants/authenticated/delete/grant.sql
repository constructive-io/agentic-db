-- Deploy: schemas/agentic_db_app_public/tables/tags/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/embedding/column


GRANT DELETE ON agentic_db_app_public.tags TO authenticated;

