-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/due_date/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".projects 
  DROP COLUMN due_date RESTRICT;


