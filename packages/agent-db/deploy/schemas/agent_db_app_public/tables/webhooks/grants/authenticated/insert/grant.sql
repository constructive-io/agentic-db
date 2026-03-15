-- Deploy: schemas/agent_db_app_public/tables/webhooks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/last_synced_at/column


GRANT INSERT ON agent_db_app_public.webhooks TO authenticated;

