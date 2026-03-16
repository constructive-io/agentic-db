-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/columns/status/alterations/alt0000002280




ALTER TABLE "agent_db_app_public".billing_subscriptions 
    ALTER COLUMN status DROP DEFAULT;



