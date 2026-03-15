-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/notes/column


GRANT SELECT ON "agent-os-1773551593867-bac64076-app-public".trips TO authenticated;

