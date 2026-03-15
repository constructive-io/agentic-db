-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/columns/id/alterations/alt0000001495
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/embedding/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habits 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

