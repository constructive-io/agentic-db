-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/intent_trigger/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  ADD COLUMN intent_trigger vector(768);

