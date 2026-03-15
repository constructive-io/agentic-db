-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/columns/grantor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_grants 
  DROP COLUMN grantor_id RESTRICT;


