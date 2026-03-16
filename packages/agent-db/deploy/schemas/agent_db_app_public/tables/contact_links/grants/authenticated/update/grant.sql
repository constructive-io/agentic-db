-- Deploy: schemas/agent_db_app_public/tables/contact_links/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/usage_count/alterations/alt0000001789


GRANT UPDATE ON "agent_db_app_public".contact_links TO authenticated;

