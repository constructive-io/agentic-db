-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/columns/cancellation_date/column


ALTER TABLE "agent_db_app_public".billing_subscriptions 
  DROP COLUMN cancellation_date RESTRICT;


