-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/columns/id/alterations/alt0000003054
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/is_active/alterations/alt0000003051



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".user_settings 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

