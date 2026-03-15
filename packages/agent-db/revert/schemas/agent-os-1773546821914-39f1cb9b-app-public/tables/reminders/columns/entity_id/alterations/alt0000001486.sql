-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/entity_id/alterations/alt0000001486


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".reminders 
  ALTER COLUMN entity_id DROP NOT NULL;


