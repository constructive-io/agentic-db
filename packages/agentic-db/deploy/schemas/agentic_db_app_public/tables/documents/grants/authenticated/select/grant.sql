-- Deploy: schemas/agentic_db_app_public/tables/documents/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/tags/column


GRANT SELECT ON agentic_db_app_public.documents TO authenticated;

