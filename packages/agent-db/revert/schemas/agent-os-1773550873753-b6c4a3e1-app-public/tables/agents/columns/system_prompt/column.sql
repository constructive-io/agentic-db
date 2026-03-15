-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/system_prompt/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agents 
  DROP COLUMN system_prompt RESTRICT;


