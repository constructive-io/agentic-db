-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/columns/created_at/alterations/alt0000000197
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_levels 
  ALTER COLUMN created_at SET DEFAULT now();

