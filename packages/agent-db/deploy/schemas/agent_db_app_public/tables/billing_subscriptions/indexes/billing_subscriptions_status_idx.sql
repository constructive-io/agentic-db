-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_status_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/status/column
-- requires: schemas/agent_db_app_public/tables/user_settings/indexes/user_settings_category_idx


CREATE INDEX billing_subscriptions_status_idx ON "agent_db_app_public".billing_subscriptions USING BTREE ( status );

