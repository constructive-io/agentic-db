-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/currency/alterations/alt0000002539
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/amount/column
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/currency/column



ALTER TABLE "agentic_db_app_public".billing_subscriptions 
    ALTER COLUMN currency SET DEFAULT 'USD';

