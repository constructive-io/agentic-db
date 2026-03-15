-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/constraints/membership_types_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/table


ALTER TABLE agent_db_memberships_public.membership_types 
  ADD CONSTRAINT membership_types_name_key 
    UNIQUE (name);

