-- Deploy: schemas/agent_db_app_public/tables/documents/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/embedding/column


GRANT SELECT ON agent_db_app_public.documents TO authenticated;

