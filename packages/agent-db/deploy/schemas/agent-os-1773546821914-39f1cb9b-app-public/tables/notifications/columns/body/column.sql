-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/body/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/title/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notifications 
  ADD COLUMN body text;

