-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/entity_id/alterations/alt0000002113


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_steps 
  ALTER COLUMN entity_id DROP NOT NULL;


