-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/user_settings/columns/category/column


GRANT UPDATE ON "agent-os-1773546821914-39f1cb9b-app-public".billing_subscriptions TO authenticated;

