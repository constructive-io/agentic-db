-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/id/alterations/alt0000002696
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/intent_trigger/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

