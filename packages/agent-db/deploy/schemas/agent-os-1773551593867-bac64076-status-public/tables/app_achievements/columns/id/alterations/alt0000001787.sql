-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/id/alterations/alt0000001787
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_achievements 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

