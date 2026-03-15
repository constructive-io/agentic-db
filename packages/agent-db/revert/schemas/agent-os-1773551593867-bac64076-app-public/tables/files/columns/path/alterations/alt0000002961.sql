-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/path/alterations/alt0000002961


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".files 
  ALTER COLUMN path DROP NOT NULL;


