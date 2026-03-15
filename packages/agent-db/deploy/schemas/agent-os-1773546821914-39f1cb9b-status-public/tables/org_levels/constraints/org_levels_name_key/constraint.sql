-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_levels/constraints/org_levels_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_levels/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_levels 
  ADD CONSTRAINT org_levels_name_key 
    UNIQUE (name);

