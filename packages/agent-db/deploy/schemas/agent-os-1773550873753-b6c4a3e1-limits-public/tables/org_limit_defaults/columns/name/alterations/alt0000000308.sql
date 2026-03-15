-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limit_defaults/columns/name/alterations/alt0000000308
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limit_defaults/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limit_defaults/columns/name/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".org_limit_defaults 
  ALTER COLUMN name SET NOT NULL;

