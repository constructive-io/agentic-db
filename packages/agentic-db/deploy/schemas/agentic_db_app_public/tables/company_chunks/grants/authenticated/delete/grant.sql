-- Deploy: schemas/agentic_db_app_public/tables/company_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/columns/embedding/column


GRANT DELETE ON "agentic_db_app_public".company_chunks TO authenticated;

