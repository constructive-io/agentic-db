-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/columns/entity_id/alterations/alt0000000341


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_membership_defaults 
  ALTER COLUMN entity_id DROP NOT NULL;


