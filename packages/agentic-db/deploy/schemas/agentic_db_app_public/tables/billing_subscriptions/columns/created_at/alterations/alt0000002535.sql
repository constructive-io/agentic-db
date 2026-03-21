-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/created_at/alterations/alt0000002535
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".billing_subscriptions 
    ALTER COLUMN created_at SET DEFAULT now();

