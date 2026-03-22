-- Deploy: schemas/agentic_db_app_public/tables/company_links/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/embedding_stale/alterations/alt0000001068


GRANT DELETE ON "agentic_db_app_public".company_links TO authenticated;

