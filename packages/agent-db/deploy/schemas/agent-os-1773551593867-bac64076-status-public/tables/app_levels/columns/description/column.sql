-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/table


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_levels 
  ADD COLUMN description text;

