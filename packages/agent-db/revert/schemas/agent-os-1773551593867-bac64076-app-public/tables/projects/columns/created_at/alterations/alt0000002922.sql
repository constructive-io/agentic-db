-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/created_at/alterations/alt0000002922


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".projects 
  ALTER COLUMN created_at DROP NOT NULL;


