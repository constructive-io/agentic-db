-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/created_at/alterations/alt0000002462


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".images 
  ALTER COLUMN created_at DROP NOT NULL;


