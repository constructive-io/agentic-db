-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/constraints/org_profiles_name_entity_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profiles 
  ADD CONSTRAINT org_profiles_name_entity_id_key 
    UNIQUE (name, entity_id);

