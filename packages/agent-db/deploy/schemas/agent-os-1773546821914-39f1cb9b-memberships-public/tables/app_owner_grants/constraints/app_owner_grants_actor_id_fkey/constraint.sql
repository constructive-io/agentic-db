-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/constraints/app_owner_grants_actor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_owner_grants 
  ADD CONSTRAINT app_owner_grants_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-users-public".users (id) 
    ON DELETE CASCADE;

