-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/content_hash/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  DROP COLUMN content_hash RESTRICT;


