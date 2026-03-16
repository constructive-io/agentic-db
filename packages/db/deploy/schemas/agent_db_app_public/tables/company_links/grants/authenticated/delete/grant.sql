-- Deploy: schemas/agent_db_app_public/tables/company_links/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_links/table
-- requires: schemas/agent_db_app_public/tables/contact_links/columns/embedding/column


GRANT DELETE ON "agent_db_app_public".company_links TO authenticated;

