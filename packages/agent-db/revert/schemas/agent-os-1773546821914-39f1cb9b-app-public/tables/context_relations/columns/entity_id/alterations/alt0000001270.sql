-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/entity_id/alterations/alt0000001270


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".context_relations 
  ALTER COLUMN entity_id DROP NOT NULL;


