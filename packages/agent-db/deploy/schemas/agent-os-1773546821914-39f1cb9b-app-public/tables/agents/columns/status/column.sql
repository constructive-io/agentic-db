-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/config/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agents 
  ADD COLUMN status text;

