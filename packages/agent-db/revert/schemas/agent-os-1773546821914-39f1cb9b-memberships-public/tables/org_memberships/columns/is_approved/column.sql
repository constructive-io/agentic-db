-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/is_approved/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
  DROP COLUMN is_approved RESTRICT;


