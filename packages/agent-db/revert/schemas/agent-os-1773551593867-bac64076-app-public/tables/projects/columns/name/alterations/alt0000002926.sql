-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/name/alterations/alt0000002926


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".projects 
  ALTER COLUMN name DROP NOT NULL;


