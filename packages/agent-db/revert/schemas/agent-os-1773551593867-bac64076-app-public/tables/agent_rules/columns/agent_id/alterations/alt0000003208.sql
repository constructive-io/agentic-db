-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_rules/columns/agent_id/alterations/alt0000003208


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_rules 
  ALTER COLUMN agent_id DROP NOT NULL;


