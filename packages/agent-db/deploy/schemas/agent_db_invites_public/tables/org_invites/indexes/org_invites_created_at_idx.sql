-- Deploy: schemas/agent_db_invites_public/tables/org_invites/indexes/org_invites_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/created_at/column


CREATE INDEX org_invites_created_at_idx ON agent_db_invites_public.org_invites ( created_at );

