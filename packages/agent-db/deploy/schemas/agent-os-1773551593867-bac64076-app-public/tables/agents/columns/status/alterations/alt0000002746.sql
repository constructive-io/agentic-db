-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/status/alterations/alt0000002746
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/config/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/status/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agents 
    ALTER COLUMN status SET DEFAULT 'idle';

