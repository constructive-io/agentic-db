-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/sentiment/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/summary/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  ADD COLUMN sentiment text;

