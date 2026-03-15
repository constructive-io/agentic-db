-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/constraints/billing_subscriptions_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/columns/category/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".billing_subscriptions 
  ADD CONSTRAINT billing_subscriptions_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;

