-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/id/alterations/alt0000003126
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/tags/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".lists 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

