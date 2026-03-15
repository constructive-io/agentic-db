-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/is_active/alterations/alt0000001442


GRANT DELETE ON "agent-os-1773550873753-b6c4a3e1-app-public".user_settings TO authenticated;

