-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/user_settings/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/is_active/alterations/alt0000001442


GRANT UPDATE ON "agent-os-1773546821914-39f1cb9b-app-public".user_settings TO authenticated;

