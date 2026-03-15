-- Deploy: schemas/agent_db_app_public/tables/integrations/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/search_tsv/column


GRANT DELETE ON "agent_db_app_public".integrations TO authenticated;

