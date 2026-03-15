-- Deploy: schemas/agent_db_app_public/tables/contacts/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/images/columns/embedding/column


GRANT SELECT ON agent_db_app_public.contacts TO authenticated;

