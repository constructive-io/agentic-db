-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/due_date/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/name/alterations/alt0000002936


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".milestones 
  ADD COLUMN due_date timestamptz;

