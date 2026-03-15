-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/columns/max/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".app_limits 
  ADD COLUMN max int;

