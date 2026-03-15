-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/alterations/alt0000001138
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".sessions 
  DISABLE ROW LEVEL SECURITY;

