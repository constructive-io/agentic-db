-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/columns/notes/column


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".trips TO authenticated;

