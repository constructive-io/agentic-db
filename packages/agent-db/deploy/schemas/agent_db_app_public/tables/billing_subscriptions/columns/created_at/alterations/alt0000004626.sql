-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/columns/created_at/alterations/alt0000004626
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".billing_subscriptions 
  ALTER COLUMN created_at SET NOT NULL;

