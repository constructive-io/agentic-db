-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/alterations/alt0000001138
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".sessions 
  DISABLE ROW LEVEL SECURITY;

