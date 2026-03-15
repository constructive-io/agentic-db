-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/columns/ref_type/column


GRANT UPDATE ON "agent-os-1773551593867-bac64076-app-public".notifications TO authenticated;

