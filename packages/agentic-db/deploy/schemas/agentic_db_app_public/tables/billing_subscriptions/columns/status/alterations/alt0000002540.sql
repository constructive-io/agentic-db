-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/status/alterations/alt0000002540
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/cancellation_date/column



ALTER TABLE "agentic_db_app_public".billing_subscriptions 
    ALTER COLUMN status SET DEFAULT 'active';

