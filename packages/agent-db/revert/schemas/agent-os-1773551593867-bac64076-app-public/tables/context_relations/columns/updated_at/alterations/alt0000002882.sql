-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/updated_at/alterations/alt0000002882


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".context_relations 
  ALTER COLUMN updated_at DROP NOT NULL;


