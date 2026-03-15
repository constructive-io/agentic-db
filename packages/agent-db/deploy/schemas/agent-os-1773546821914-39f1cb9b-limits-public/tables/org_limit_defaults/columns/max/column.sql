-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limit_defaults/columns/max/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limit_defaults/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".org_limit_defaults 
  ADD COLUMN max int;

