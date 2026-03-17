-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/entity_id/alterations/alt0000001421
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/category/column
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".billing_subscriptions 
  ALTER COLUMN entity_id SET NOT NULL;

