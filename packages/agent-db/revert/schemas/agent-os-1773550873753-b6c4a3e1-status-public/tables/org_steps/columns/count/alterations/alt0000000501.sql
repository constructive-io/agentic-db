-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/columns/count/alterations/alt0000000501


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_steps 
  ALTER COLUMN count DROP NOT NULL;


