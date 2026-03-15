-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/ref_type/column


GRANT SELECT ON "agent-os-1773550873753-b6c4a3e1-app-public".notifications TO authenticated;

