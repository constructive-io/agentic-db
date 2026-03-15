-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
  DROP COLUMN created_at RESTRICT;


