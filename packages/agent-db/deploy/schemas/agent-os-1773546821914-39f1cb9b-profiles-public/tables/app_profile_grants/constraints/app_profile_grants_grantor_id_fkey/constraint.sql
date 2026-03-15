-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/constraints/app_profile_grants_grantor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_grants 
  ADD CONSTRAINT app_profile_grants_grantor_id_fkey 
    FOREIGN KEY(grantor_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-users-public".users (id) 
    ON DELETE SET NULL;

