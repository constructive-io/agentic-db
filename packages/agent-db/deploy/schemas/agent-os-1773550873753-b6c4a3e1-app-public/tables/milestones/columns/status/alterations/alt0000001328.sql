-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/columns/status/alterations/alt0000001328
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/columns/status/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/columns/due_date/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".milestones 
    ALTER COLUMN status SET DEFAULT 'pending';

