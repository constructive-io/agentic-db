-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/entity_id/alterations/alt0000002784


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".threads 
  ALTER COLUMN entity_id DROP NOT NULL;


