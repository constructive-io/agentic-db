-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/columns/status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/columns/config/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".integrations 
  ADD COLUMN status text;

