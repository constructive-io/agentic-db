-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/created_at/alterations/alt0000002509


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
  ALTER COLUMN created_at DROP NOT NULL;


