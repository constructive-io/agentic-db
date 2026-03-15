-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/related_entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".reminders 
  DROP COLUMN related_entity_id RESTRICT;


