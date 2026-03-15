-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/columns/status/alterations/alt0000001199
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/columns/status/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/columns/ended_at/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".processes 
    ALTER COLUMN status SET DEFAULT 'running';

