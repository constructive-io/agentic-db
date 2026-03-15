-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/entity_id/alterations/alt0000001403
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".expenses 
  ALTER COLUMN entity_id SET NOT NULL;

