-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/created_at/alterations/alt0000002114


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_steps 
  ALTER COLUMN created_at DROP DEFAULT;


