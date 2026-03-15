-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/id/alterations/alt0000001494
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habits 
  ALTER COLUMN id SET NOT NULL;

