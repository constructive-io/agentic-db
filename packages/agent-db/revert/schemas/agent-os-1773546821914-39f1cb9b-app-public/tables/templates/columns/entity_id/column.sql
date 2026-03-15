-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".templates 
  DROP COLUMN entity_id RESTRICT;


