-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/profile_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships 
  DROP COLUMN profile_id RESTRICT;


