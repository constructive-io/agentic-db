-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_tools/columns/tool_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_tools 
  DROP COLUMN tool_id RESTRICT;


