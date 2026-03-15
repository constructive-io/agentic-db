-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/communication_style/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agents 
  DROP COLUMN communication_style RESTRICT;


