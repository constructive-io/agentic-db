-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/created_at/alterations/alt0000002741


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agents 
  ALTER COLUMN created_at DROP NOT NULL;


