-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/entity_id/alterations/alt0000002708


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
  ALTER COLUMN entity_id DROP NOT NULL;


