-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/read_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notifications 
  DROP COLUMN read_at RESTRICT;


