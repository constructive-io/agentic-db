-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/active_count/alterations/alt0000001084
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/overview/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/active_count/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skills 
    ALTER COLUMN active_count SET DEFAULT 0;

