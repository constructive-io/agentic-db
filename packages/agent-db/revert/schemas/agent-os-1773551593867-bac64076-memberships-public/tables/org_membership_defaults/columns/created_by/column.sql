-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/columns/created_by/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_membership_defaults 
  DROP COLUMN created_by RESTRICT;


