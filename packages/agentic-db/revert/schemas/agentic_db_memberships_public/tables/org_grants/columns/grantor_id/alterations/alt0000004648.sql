-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/columns/grantor_id/alterations/alt0000004648




ALTER TABLE agentic_db_memberships_public.org_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;



