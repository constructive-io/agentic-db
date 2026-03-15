-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/trips/indexes/trips_name_gin_idx
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/name/column


CREATE INDEX billing_subscriptions_name_gin_idx ON "agent_db_app_public".billing_subscriptions USING gin ( name gin_trgm_ops );

