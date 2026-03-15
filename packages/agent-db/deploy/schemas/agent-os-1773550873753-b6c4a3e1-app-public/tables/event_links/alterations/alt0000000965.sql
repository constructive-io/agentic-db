-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/alterations/alt0000000965
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_links/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_links 
  DISABLE ROW LEVEL SECURITY;

