-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/from_id/alterations/alt0000001276


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".context_relations 
  ALTER COLUMN from_id DROP NOT NULL;


