-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expenses 
  ADD COLUMN entity_id uuid;

