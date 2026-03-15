-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/columns/created_at/alterations/alt0000002948


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".repositories 
  ALTER COLUMN created_at DROP NOT NULL;


