-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_grants/columns/grantor_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_grants 
  DROP COLUMN grantor_id RESTRICT;


