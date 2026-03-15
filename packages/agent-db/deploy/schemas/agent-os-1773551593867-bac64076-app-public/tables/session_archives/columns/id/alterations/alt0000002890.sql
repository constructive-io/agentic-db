-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/id/alterations/alt0000002890
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/strength/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

