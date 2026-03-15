-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/category/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  DROP COLUMN category RESTRICT;


