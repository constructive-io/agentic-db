-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/columns/current_streak/alterations/alt0000001502
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/columns/target_count/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/columns/current_streak/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habits 
    ALTER COLUMN current_streak SET DEFAULT 0;

