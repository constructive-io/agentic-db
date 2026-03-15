-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/columns/website/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contacts 
  DROP COLUMN website RESTRICT;


