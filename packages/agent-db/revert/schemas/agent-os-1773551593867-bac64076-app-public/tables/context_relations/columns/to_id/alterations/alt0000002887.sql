-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/to_id/alterations/alt0000002887


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".context_relations 
  ALTER COLUMN to_id DROP NOT NULL;


