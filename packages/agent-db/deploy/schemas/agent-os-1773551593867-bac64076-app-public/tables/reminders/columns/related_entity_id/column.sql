-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/related_entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/status/alterations/alt0000003101


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
  ADD COLUMN related_entity_id uuid;

