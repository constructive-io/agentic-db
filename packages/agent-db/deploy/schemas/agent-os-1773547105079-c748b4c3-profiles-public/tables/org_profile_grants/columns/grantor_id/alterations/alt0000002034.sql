-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/columns/grantor_id/alterations/alt0000002034
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/columns/grantor_id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_grants 
    ALTER COLUMN grantor_id SET DEFAULT jwt_public.current_user_id();

