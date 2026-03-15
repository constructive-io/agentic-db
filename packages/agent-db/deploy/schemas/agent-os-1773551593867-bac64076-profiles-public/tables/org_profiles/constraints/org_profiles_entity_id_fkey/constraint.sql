-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/constraints/org_profiles_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/table


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profiles 
  ADD CONSTRAINT org_profiles_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;

