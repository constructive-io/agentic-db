-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/ended_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/started_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".events 
  ADD COLUMN ended_at timestamptz;

