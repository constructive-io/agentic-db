-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/columns/grantor_id/column


ALTER TABLE agentic_db_memberships_public.app_grants 
  DROP COLUMN grantor_id RESTRICT;


