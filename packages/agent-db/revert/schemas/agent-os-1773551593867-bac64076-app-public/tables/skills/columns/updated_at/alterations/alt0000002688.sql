-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/updated_at/alterations/alt0000002688


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  ALTER COLUMN updated_at DROP NOT NULL;


