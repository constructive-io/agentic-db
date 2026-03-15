-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/columns/grantor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_grants 
  DROP COLUMN grantor_id RESTRICT;


