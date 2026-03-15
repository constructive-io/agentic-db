-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/indexes/app_membership_defaults_created_by_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/created_by/column


CREATE INDEX app_membership_defaults_created_by_idx ON agent_db_memberships_public.app_membership_defaults ( created_by );

