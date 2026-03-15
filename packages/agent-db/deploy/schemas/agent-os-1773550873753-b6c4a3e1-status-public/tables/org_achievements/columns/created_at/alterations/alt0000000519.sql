-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/columns/created_at/alterations/alt0000000519
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_achievements 
  ALTER COLUMN created_at SET DEFAULT now();

