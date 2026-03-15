-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/columns/grantor_id/alterations/alt0000000143
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/columns/grantor_id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_owner_grants 
    ALTER COLUMN grantor_id SET DEFAULT jwt_public.current_user_id();

