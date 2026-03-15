-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/count/alterations/alt0000002110


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_steps 
  ALTER COLUMN count DROP NOT NULL;


