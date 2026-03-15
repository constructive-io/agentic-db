-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/columns/updated_at/alterations/alt0000002667


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".rules 
  ALTER COLUMN updated_at DROP NOT NULL;


