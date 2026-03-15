-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/columns/count/alterations/alt0000000184
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/columns/count/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_achievements 
    ALTER COLUMN count SET DEFAULT 0;

