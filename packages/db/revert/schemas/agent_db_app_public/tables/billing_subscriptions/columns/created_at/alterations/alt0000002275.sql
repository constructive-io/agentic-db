-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/columns/created_at/alterations/alt0000002275




ALTER TABLE "agent_db_app_public".billing_subscriptions 
    ALTER COLUMN created_at DROP DEFAULT;



