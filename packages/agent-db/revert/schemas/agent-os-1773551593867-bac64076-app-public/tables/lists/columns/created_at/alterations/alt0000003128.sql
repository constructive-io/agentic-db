-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/created_at/alterations/alt0000003128


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".lists 
  ALTER COLUMN created_at DROP NOT NULL;


