-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/columns/count/alterations/alt0000000516
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/columns/count/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_achievements 
    ALTER COLUMN count SET DEFAULT 0;

