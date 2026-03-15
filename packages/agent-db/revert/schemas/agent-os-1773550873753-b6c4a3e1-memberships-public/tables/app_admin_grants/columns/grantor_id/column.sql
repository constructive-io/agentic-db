-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_admin_grants/columns/grantor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_admin_grants 
  DROP COLUMN grantor_id RESTRICT;


