-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/always_load/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/prerequisites/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  ADD COLUMN always_load bool;

