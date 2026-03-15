-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limit_defaults/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limit_defaults/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".org_limit_defaults 
  ENABLE ROW LEVEL SECURITY;

