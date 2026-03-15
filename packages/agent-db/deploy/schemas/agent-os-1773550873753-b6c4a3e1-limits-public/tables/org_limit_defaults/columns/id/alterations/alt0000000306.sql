-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limit_defaults/columns/id/alterations/alt0000000306
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limit_defaults/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limit_defaults/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".org_limit_defaults 
  ALTER COLUMN id SET NOT NULL;

