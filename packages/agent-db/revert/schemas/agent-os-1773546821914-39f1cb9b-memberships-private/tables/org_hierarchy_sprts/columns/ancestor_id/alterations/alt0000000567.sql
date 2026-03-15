-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/columns/ancestor_id/alterations/alt0000000567


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".org_hierarchy_sprts 
  ALTER COLUMN ancestor_id DROP NOT NULL;


