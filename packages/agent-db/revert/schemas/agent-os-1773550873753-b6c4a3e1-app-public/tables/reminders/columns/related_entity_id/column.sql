-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/related_entity_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".reminders 
  DROP COLUMN related_entity_id RESTRICT;


