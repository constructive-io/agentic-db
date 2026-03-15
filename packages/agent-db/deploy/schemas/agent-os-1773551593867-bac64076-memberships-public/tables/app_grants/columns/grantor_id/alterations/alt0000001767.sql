-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/columns/grantor_id/alterations/alt0000001767
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/columns/grantor_id/column



ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_grants 
    ALTER COLUMN grantor_id SET DEFAULT jwt_public.current_user_id();

