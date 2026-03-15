-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/columns/count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_steps 
  ADD COLUMN count int;

