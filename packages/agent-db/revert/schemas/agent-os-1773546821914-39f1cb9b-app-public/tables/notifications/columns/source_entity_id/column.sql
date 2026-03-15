-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/source_entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notifications 
  DROP COLUMN source_entity_id RESTRICT;


