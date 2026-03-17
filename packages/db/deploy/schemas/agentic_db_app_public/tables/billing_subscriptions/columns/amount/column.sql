-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/amount/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/name/alterations/alt0000001426


ALTER TABLE "agentic_db_app_public".billing_subscriptions 
  ADD COLUMN amount numeric;

