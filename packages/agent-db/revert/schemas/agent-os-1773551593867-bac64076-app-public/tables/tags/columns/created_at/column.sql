-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tags 
  DROP COLUMN created_at RESTRICT;


