-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/overview/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
  DROP COLUMN overview RESTRICT;


