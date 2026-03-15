-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/to_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".context_relations 
  DROP COLUMN to_id RESTRICT;


