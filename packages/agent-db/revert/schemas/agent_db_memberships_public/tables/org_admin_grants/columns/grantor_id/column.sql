-- Revert: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/grantor_id/column


ALTER TABLE agent_db_memberships_public.org_admin_grants 
  DROP COLUMN grantor_id RESTRICT;


