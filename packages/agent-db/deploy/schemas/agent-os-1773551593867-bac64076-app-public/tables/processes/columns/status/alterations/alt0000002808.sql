-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/status/alterations/alt0000002808
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/status/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/ended_at/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".processes 
    ALTER COLUMN status SET DEFAULT 'running';

