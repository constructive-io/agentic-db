-- Deploy: schemas/agent_db_app_public/tables/webhooks/constraints/webhooks_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/last_synced_at/column


ALTER TABLE "agent_db_app_public".webhooks 
  ADD CONSTRAINT webhooks_pkey PRIMARY KEY (id);

