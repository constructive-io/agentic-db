-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/type/alterations/alt0000000926
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/type/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/contact_id/alterations/alt0000000925


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".interactions 
  ALTER COLUMN type SET NOT NULL;

