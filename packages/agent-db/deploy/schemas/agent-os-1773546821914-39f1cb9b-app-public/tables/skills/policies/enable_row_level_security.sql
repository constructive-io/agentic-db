-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  ENABLE ROW LEVEL SECURITY;

