-- Deploy: schemas/agentic_db_app_public/tables/company_links/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table


GRANT DELETE ON "agentic_db_app_public".company_links TO authenticated;

