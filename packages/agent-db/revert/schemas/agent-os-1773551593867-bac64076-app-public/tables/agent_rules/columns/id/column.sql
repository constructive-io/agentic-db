-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_rules/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_rules 
  DROP COLUMN id RESTRICT;


