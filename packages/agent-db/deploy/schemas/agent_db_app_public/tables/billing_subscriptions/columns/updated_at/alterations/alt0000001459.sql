-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/columns/updated_at/alterations/alt0000001459
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.billing_subscriptions 
    ALTER COLUMN updated_at SET DEFAULT now();

