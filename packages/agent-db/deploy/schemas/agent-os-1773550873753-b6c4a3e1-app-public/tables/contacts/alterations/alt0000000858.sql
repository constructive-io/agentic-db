-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/alterations/alt0000000858
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contacts 
  DISABLE ROW LEVEL SECURITY;

