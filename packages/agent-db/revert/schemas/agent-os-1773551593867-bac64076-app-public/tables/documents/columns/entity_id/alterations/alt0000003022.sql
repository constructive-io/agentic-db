-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/entity_id/alterations/alt0000003022


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
  ALTER COLUMN entity_id DROP NOT NULL;


