-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/updated_at/alterations/alt0000002115


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_steps 
  ALTER COLUMN updated_at DROP DEFAULT;


