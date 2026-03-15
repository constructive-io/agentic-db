-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/alterations/alt0000001191
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".processes 
  DISABLE ROW LEVEL SECURITY;

