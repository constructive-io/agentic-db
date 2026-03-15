-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/updated_at/alterations/alt0000002870


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_spawns 
  ALTER COLUMN updated_at DROP NOT NULL;


