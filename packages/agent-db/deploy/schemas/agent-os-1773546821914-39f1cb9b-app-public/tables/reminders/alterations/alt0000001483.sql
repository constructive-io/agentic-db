-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/alterations/alt0000001483
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/ideas/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".reminders 
  DISABLE ROW LEVEL SECURITY;

