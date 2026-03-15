-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/entity_id/alterations/alt0000003095


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
  ALTER COLUMN entity_id DROP NOT NULL;


