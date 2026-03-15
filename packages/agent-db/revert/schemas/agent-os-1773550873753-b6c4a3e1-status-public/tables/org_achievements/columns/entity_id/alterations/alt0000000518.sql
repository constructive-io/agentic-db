-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/columns/entity_id/alterations/alt0000000518


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_achievements 
  ALTER COLUMN entity_id DROP NOT NULL;


