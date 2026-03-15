-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/status/alterations/alt0000002863
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/status/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/workflow_id/alterations/alt0000002862



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_runs 
    ALTER COLUMN status SET DEFAULT 'pending';

