-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/action_url/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notifications 
  DROP COLUMN action_url RESTRICT;


