-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/columns/entity_id/alterations/alt0000002550


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".attachments 
  ALTER COLUMN entity_id DROP NOT NULL;


