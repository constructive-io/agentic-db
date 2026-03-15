-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/status/alterations/alt0000001137
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/config/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/status/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agents 
    ALTER COLUMN status SET DEFAULT 'idle';

