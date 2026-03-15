-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/created_at/alterations/alt0000002731


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  ALTER COLUMN created_at DROP NOT NULL;


