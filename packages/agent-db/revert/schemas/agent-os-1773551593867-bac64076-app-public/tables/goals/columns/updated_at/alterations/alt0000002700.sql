-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/updated_at/alterations/alt0000002700


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
  ALTER COLUMN updated_at DROP NOT NULL;


