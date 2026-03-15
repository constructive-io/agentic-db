-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/columns/subject/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/columns/to_addresses/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".messages 
  ADD COLUMN subject text;

