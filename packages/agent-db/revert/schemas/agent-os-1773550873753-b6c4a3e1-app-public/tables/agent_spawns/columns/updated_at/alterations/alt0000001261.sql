-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/updated_at/alterations/alt0000001261


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_spawns 
  ALTER COLUMN updated_at DROP NOT NULL;


