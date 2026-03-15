-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/created_by/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
  DROP COLUMN created_by RESTRICT;


