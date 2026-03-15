-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_tools/columns/entity_id/alterations/alt0000001307


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_tools 
  ALTER COLUMN entity_id DROP NOT NULL;


