-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/action_url/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notifications 
  DROP COLUMN action_url RESTRICT;


