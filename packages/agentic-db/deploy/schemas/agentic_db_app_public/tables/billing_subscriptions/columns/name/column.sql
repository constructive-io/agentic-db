-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/updated_at/alterations/alt0000002537


ALTER TABLE "agentic_db_app_public".billing_subscriptions 
  ADD COLUMN name text;

