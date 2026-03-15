-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/is_active/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".templates 
  DROP COLUMN is_active RESTRICT;


