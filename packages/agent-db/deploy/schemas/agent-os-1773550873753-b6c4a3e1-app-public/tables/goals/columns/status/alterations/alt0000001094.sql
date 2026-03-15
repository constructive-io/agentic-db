-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/columns/status/alterations/alt0000001094
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/columns/status/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/columns/target_date/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goals 
    ALTER COLUMN status SET DEFAULT 'active';

