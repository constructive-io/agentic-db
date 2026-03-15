-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/columns/grantor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_grants 
  DROP COLUMN grantor_id RESTRICT;


