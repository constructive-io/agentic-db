-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/alterations/alt0000001224
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
  DISABLE ROW LEVEL SECURITY;

