-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_tools/columns/tool_id/alterations/alt0000002913


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_tools 
  ALTER COLUMN tool_id DROP NOT NULL;


