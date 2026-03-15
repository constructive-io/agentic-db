-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/overview/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notes 
  DROP COLUMN overview RESTRICT;


