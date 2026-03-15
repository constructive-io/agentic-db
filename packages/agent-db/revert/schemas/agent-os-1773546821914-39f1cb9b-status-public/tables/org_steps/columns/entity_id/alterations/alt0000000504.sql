-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/columns/entity_id/alterations/alt0000000504


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_steps 
  ALTER COLUMN entity_id DROP NOT NULL;


