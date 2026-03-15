-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/constraints/billing_subscriptions_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/columns/category/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".billing_subscriptions 
  ADD CONSTRAINT billing_subscriptions_pkey PRIMARY KEY (id);

