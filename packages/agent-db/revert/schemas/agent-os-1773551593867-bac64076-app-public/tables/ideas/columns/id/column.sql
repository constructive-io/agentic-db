-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".ideas 
  DROP COLUMN id RESTRICT;


