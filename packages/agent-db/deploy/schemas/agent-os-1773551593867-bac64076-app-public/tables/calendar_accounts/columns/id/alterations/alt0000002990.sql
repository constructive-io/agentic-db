-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/columns/id/alterations/alt0000002990
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/columns/embedding/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_accounts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

