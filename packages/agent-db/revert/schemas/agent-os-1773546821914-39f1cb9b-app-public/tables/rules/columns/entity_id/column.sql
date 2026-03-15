-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".rules 
  DROP COLUMN entity_id RESTRICT;


