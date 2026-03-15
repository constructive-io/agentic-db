-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/columns/created_at/alterations/alt0000000505


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_steps 
  ALTER COLUMN created_at DROP DEFAULT;


