-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_levels/columns/name/alterations/alt0000000525
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_levels/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_levels/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_levels 
  ALTER COLUMN name SET NOT NULL;

