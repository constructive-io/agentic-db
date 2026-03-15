-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/status/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".ideas 
  DROP COLUMN status RESTRICT;


