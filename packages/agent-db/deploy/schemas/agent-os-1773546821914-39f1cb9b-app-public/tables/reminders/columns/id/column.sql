-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/ideas/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".reminders 
  ADD COLUMN id uuid;

