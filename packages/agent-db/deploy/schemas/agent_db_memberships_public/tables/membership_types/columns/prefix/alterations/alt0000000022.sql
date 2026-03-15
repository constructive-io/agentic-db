-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/columns/prefix/alterations/alt0000000022
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/table
-- requires: schemas/agent_db_memberships_public/tables/membership_types/columns/prefix/column


ALTER TABLE agent_db_memberships_public.membership_types 
  ALTER COLUMN prefix SET NOT NULL;

