-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/alterations/alt0000001073
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  DISABLE ROW LEVEL SECURITY;

