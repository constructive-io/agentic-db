-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/created_at/alterations/alt0000002698


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
  ALTER COLUMN created_at DROP NOT NULL;


