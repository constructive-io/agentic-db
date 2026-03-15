-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/embedding/column


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".expenses TO authenticated;

