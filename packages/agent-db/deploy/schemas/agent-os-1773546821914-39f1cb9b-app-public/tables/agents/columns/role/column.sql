-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/role/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/name/alterations/alt0000001136


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agents 
  ADD COLUMN role text;

