-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/name/alterations/alt0000002108


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_steps 
  ALTER COLUMN name DROP NOT NULL;


