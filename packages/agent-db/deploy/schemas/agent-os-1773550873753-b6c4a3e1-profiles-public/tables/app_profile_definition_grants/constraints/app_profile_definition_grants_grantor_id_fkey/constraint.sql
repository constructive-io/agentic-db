-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/constraints/app_profile_definition_grants_grantor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_definition_grants 
  ADD CONSTRAINT app_profile_definition_grants_grantor_id_fkey 
    FOREIGN KEY(grantor_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE SET NULL;

