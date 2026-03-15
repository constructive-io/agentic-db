-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/constraints/membership_types_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".membership_types 
  ADD CONSTRAINT membership_types_name_key 
    UNIQUE (name);

