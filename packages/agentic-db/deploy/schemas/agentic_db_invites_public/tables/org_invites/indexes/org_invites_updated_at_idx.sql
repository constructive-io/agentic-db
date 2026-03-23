-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/indexes/org_invites_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/updated_at/column


CREATE INDEX org_invites_updated_at_idx ON agentic_db_invites_public.org_invites ( updated_at );

