-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/updated_at/alterations/alt0000002924


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".projects 
  ALTER COLUMN updated_at DROP NOT NULL;


