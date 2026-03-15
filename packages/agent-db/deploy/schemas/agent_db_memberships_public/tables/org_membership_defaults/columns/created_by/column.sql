-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/created_by/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


ALTER TABLE agent_db_memberships_public.org_membership_defaults 
  ADD COLUMN created_by uuid;

