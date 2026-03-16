-- Deploy: schemas/agent_db_app_public/tables/integrations/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/search_tsv/column


GRANT INSERT ON "agent_db_app_public".integrations TO authenticated;

