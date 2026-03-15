-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/created_at/alterations/alt0000002686


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  ALTER COLUMN created_at DROP NOT NULL;


