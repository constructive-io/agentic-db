-- Deploy: schemas/agent_db_app_public/tables/events/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/embedding/column


GRANT DELETE ON agent_db_app_public.events TO authenticated;

