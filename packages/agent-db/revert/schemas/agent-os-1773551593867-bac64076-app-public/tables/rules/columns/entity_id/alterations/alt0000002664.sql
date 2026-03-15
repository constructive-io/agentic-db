-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/columns/entity_id/alterations/alt0000002664


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".rules 
  ALTER COLUMN entity_id DROP NOT NULL;


