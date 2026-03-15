-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_tools/columns/entity_id/alterations/alt0000002916


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_tools 
  ALTER COLUMN entity_id DROP NOT NULL;


