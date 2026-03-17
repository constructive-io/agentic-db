-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/status/alterations/alt0000001428




ALTER TABLE "agentic_db_app_public".billing_subscriptions 
    ALTER COLUMN status DROP DEFAULT;



