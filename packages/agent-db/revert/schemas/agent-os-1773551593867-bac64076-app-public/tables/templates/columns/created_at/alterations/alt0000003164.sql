-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/columns/created_at/alterations/alt0000003164


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".templates 
  ALTER COLUMN created_at DROP NOT NULL;


