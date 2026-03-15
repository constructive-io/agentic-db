-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/entity_id/alterations/alt0000002540


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tags 
  ALTER COLUMN entity_id DROP NOT NULL;


