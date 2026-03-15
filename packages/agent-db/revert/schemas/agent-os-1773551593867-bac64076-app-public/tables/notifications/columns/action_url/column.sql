-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/action_url/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notifications 
  DROP COLUMN action_url RESTRICT;


