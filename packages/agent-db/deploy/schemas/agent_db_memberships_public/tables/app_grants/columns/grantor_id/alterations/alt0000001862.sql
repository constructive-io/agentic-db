-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/columns/grantor_id/alterations/alt0000001862
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_grants/columns/grantor_id/column



ALTER TABLE "agent_db_memberships_public".app_grants 
    ALTER COLUMN grantor_id SET DEFAULT jwt_public.current_user_id();

