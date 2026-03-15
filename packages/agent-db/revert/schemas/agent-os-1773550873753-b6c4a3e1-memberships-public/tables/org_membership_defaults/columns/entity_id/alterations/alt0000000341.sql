-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/columns/entity_id/alterations/alt0000000341


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_membership_defaults 
  ALTER COLUMN entity_id DROP NOT NULL;


