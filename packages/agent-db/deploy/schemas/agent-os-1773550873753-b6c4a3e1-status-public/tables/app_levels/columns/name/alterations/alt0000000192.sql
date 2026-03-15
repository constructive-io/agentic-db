-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/columns/name/alterations/alt0000000192
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/columns/name/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_levels 
  ALTER COLUMN name SET NOT NULL;

