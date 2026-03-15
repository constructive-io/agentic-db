-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limits/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limits/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".org_limits 
  ENABLE ROW LEVEL SECURITY;

