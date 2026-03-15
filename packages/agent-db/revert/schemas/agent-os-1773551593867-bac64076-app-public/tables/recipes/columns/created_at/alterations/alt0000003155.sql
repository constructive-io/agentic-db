-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/created_at/alterations/alt0000003155


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  ALTER COLUMN created_at DROP NOT NULL;


