-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  DROP COLUMN entity_id RESTRICT;


