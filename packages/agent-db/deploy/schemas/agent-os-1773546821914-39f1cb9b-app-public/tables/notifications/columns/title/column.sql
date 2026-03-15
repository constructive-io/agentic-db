-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/updated_at/alterations/alt0000001541


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notifications 
  ADD COLUMN title text;

