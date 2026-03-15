-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/contact_id/alterations/alt0000000925


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".interactions 
  ADD COLUMN type text;

