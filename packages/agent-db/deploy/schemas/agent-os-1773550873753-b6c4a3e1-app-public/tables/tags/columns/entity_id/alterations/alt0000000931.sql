-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/columns/entity_id/alterations/alt0000000931
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/columns/entity_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tags 
  ALTER COLUMN entity_id SET NOT NULL;

