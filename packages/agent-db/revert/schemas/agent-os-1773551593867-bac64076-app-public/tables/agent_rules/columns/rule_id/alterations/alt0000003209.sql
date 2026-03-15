-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_rules/columns/rule_id/alterations/alt0000003209


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_rules 
  ALTER COLUMN rule_id DROP NOT NULL;


