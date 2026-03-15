-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/columns/entity_id/alterations/alt0000001403
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/columns/entity_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".expenses 
  ALTER COLUMN entity_id SET NOT NULL;

