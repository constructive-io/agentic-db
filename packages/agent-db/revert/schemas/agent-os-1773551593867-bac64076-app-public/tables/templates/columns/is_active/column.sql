-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/columns/is_active/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".templates 
  DROP COLUMN is_active RESTRICT;


