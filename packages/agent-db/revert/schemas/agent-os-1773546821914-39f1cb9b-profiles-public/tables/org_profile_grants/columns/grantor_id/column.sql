-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_grants/columns/grantor_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_grants 
  DROP COLUMN grantor_id RESTRICT;


