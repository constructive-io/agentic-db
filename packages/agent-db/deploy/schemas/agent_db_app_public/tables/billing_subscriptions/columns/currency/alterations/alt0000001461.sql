-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/columns/currency/alterations/alt0000001461
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/amount/column
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/currency/column



ALTER TABLE agent_db_app_public.billing_subscriptions 
    ALTER COLUMN currency SET DEFAULT 'USD';

