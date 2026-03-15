-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/updated_at/alterations/alt0000002464


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".images 
  ALTER COLUMN updated_at DROP NOT NULL;


