-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/columns/read_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notifications 
  DROP COLUMN read_at RESTRICT;


