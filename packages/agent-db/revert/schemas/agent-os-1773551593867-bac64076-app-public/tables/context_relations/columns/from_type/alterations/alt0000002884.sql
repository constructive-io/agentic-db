-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/from_type/alterations/alt0000002884


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".context_relations 
  ALTER COLUMN from_type DROP NOT NULL;


