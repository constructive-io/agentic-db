-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/active_count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/overview/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".memories 
  ADD COLUMN active_count int;

