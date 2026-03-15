-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/columns/descendant_id/alterations/alt0000000569


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".org_hierarchy_sprts 
  ALTER COLUMN descendant_id DROP NOT NULL;


