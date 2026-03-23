-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/columns/grantor_id/column


ALTER TABLE agentic_db_memberships_public.org_grants 
  DROP COLUMN grantor_id RESTRICT;


