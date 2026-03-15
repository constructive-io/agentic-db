-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/columns/entity_id/alterations/alt0000002127


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_achievements 
  ALTER COLUMN entity_id DROP NOT NULL;


