-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/columns/currency/alterations/alt0000004679




ALTER TABLE "agent_db_app_public".billing_subscriptions 
    ALTER COLUMN currency DROP DEFAULT;



