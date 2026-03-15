-- Deploy: schemas/agent_db_app_public/tables/integrations/indexes/integrations_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/name/column
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_name_gin_idx


CREATE INDEX integrations_name_gin_idx ON "agent_db_app_public".integrations USING gin ( name gin_trgm_ops );

