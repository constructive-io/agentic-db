-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_rules/columns/entity_id/alterations/alt0000003212


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_rules 
  ALTER COLUMN entity_id DROP NOT NULL;


