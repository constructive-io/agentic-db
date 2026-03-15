-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/columns/grantor_id/alterations/alt0000002096
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/columns/grantor_id/column



ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_definition_grants 
    ALTER COLUMN grantor_id SET DEFAULT jwt_public.current_user_id();

