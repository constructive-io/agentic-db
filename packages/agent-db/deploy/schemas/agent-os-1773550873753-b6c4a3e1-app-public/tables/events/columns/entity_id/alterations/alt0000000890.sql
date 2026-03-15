-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/columns/entity_id/alterations/alt0000000890
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/columns/embedding/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/columns/entity_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".events 
  ALTER COLUMN entity_id SET NOT NULL;

