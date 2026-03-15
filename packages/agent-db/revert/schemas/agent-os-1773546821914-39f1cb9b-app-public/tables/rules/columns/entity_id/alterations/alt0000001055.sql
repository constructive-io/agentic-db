-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/entity_id/alterations/alt0000001055


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".rules 
  ALTER COLUMN entity_id DROP NOT NULL;


