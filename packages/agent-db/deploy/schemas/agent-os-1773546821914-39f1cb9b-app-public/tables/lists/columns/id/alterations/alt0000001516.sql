-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/id/alterations/alt0000001516
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/tags/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".lists 
  ALTER COLUMN id SET NOT NULL;

