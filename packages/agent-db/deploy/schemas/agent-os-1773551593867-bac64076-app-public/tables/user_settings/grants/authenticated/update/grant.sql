-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/is_active/alterations/alt0000003051


GRANT UPDATE ON "agent-os-1773551593867-bac64076-app-public".user_settings TO authenticated;

