-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_next_billing_date_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/next_billing_date/column
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_status_idx


CREATE INDEX billing_subscriptions_next_billing_date_idx ON "agent_db_app_public".billing_subscriptions USING BTREE ( next_billing_date );

