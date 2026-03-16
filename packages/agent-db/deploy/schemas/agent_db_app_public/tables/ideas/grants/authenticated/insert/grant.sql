-- Deploy: schemas/agent_db_app_public/tables/ideas/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


GRANT INSERT ON "agent_db_app_public".ideas TO authenticated;

