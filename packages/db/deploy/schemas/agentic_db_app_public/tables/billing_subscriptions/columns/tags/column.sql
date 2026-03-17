-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/status/alterations/alt0000001428


ALTER TABLE "agentic_db_app_public".billing_subscriptions 
  ADD COLUMN tags citext[];

