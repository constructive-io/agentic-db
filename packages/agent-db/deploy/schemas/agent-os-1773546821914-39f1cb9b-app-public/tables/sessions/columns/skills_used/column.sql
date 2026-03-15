-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/skills_used/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/contexts_used/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".sessions 
  ADD COLUMN skills_used uuid[];

