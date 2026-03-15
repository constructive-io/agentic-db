-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/content/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".ideas 
  DROP COLUMN content RESTRICT;


