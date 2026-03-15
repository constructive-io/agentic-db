-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/columns/grantor_id/alterations/alt0000000473
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/columns/grantor_id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_grants 
    ALTER COLUMN grantor_id SET DEFAULT jwt_public.current_user_id();

