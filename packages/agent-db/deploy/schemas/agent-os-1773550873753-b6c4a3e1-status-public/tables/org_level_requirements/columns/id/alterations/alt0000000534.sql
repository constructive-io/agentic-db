-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_level_requirements/columns/id/alterations/alt0000000534
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_level_requirements/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_level_requirements/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_level_requirements 
  ALTER COLUMN id SET NOT NULL;

