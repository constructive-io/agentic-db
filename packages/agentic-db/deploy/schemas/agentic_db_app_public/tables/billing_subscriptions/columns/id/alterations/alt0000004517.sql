-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/id/alterations/alt0000004517
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/category/column
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/id/column


ALTER TABLE agentic_db_app_public.billing_subscriptions 
  ALTER COLUMN id SET NOT NULL;

