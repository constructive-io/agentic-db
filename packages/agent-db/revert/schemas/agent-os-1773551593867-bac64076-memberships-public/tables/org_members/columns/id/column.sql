-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_members 
  DROP COLUMN id RESTRICT;


