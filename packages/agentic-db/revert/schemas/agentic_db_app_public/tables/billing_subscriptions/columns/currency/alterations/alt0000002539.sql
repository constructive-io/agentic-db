-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/currency/alterations/alt0000002539




ALTER TABLE "agentic_db_app_public".billing_subscriptions 
    ALTER COLUMN currency DROP DEFAULT;



