-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_hierarchy_sprts/columns/descendant_id/alterations/alt0000002178


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".org_hierarchy_sprts 
  ALTER COLUMN descendant_id DROP NOT NULL;


