-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/from_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".context_relations 
  DROP COLUMN from_type RESTRICT;


