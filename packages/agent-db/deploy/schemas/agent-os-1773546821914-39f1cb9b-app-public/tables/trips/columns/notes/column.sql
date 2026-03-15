-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/columns/notes/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/columns/status/alterations/alt0000001472


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".trips 
  ADD COLUMN notes text;

