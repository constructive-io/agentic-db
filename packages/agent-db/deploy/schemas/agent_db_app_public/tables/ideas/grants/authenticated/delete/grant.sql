-- Deploy: schemas/agent_db_app_public/tables/ideas/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


GRANT DELETE ON agent_db_app_public.ideas TO authenticated;

