-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/entity_id/alterations/alt0000002685


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  ALTER COLUMN entity_id DROP NOT NULL;


