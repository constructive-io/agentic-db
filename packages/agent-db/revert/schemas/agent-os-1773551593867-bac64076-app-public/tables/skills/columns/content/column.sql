-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/content/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  DROP COLUMN content RESTRICT;


